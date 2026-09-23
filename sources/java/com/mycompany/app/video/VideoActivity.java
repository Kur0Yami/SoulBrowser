package com.mycompany.app.video;

import android.animation.ValueAnimator;
import android.app.PictureInPictureParams;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.Typeface;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.cast.CastUtil;
import com.mycompany.app.cast.ExpandedControlsActivity;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookSub;
import com.mycompany.app.db.book.DbBookVpos;
import com.mycompany.app.dialog.DialogCapture;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogDownUrl;
import com.mycompany.app.dialog.DialogOpenType;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekBright;
import com.mycompany.app.dialog.DialogSeekSub;
import com.mycompany.app.dialog.DialogSetDown;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSub;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.CastActivity;
import com.mycompany.app.setting.SettingVideo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.subtitle.Subtitle;
import com.mycompany.app.subtitle.SubtitleItem;
import com.mycompany.app.video.VideoAudio;
import com.mycompany.app.video.VideoControl;
import com.mycompany.app.view.MyAreaView;
import com.mycompany.app.view.MyArrowView;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeLinear;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyProgressVideo;
import com.mycompany.app.view.MySizeFrame;
import com.mycompany.app.view.MyTextSub;
import com.mycompany.app.view.MyTextView;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebVideoFull;
import com.mycompany.app.web.WebVideoProgress;
import com.mycompany.app.zoom.ZoomVideoAttacher;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class VideoActivity extends CastActivity implements VideoControl.ControlListener, ZoomVideoAttacher.VideoAttacherListener {
    public static final /* synthetic */ int r4 = 0;
    public boolean A2;
    public boolean A3;
    public boolean B2;
    public boolean B3;
    public int C1;
    public boolean C2;
    public VideoSubLayout C3;
    public boolean D1;
    public int D2;
    public VideoSubLayout D3;
    public boolean E1;
    public int E2;
    public WebVideoProgress E3;
    public boolean F1;
    public boolean F2;
    public MyTextView F3;
    public boolean G1;
    public int G2;
    public String G3;
    public boolean H1;
    public boolean H2;
    public int H3;
    public View I1;
    public boolean I2;
    public int I3;
    public SystemRunnable J1;
    public String J2;
    public SubTask J3;
    public MySizeFrame K1;
    public int K2;
    public ArrayList K3;
    public TextureView L1;
    public int L2;
    public int L3;
    public VideoControl M1;
    public int M2;
    public int M3;
    public WebVideoProgress N1;
    public int N2;
    public EventHandler N3;
    public WebVideoProgress O1;
    public int O2;
    public MyPopupMenu O3;
    public WebVideoProgress P1;
    public int P2;
    public MyPopupMenu P3;
    public MyCoverView Q1;
    public int Q2;
    public DialogSeekSub Q3;
    public MyFadeFrame R1;
    public int R2;
    public boolean R3;
    public MyFadeFrame S1;
    public boolean S2;
    public long S3;
    public ZoomVideoAttacher T1;
    public boolean T2;
    public MediaPlayer T3;
    public GestureDetector U1;
    public CropTask U2;
    public String U3;
    public boolean V1;
    public DialogCapture V2;
    public String V3;
    public float W1;
    public DialogSeekBright W2;
    public boolean W3;
    public float X1;
    public DialogSeekAudio X2;
    public String X3;
    public int Y1;
    public DialogConfirm Y2;
    public int Y3;
    public boolean Z1;
    public DialogDownUrl Z2;
    public boolean Z3;
    public boolean a2;
    public DialogSetDown a3;
    public PictureInPictureParams.Builder b2;
    public DialogConfirm b3;
    public int b4;
    public EventReceiver c2;
    public DialogOpenType c3;
    public int c4;
    public Uri d2;
    public MyPopupMenu d3;
    public boolean d4;
    public String e2;
    public MyPopupMenu e3;
    public boolean f2;
    public MyPopupMenu f3;
    public String f4;
    public String g2;
    public float g3;
    public String g4;
    public String h2;
    public boolean h3;
    public String h4;
    public boolean i2;
    public boolean i3;
    public View i4;
    public boolean j2;
    public long j3;
    public boolean j4;
    public boolean k2;
    public boolean k3;
    public boolean l2;
    public VideoAudio l3;
    public MotionEvent l4;
    public boolean m2;
    public MyPopupMenu m3;
    public String n2;
    public MyWebSafe n3;
    public int n4;
    public String o2;
    public boolean o3;
    public boolean o4;
    public String p2;
    public boolean p3;
    public boolean p4;
    public String q2;
    public boolean q3;
    public CastUtil q4;
    public String r2;
    public String r3;
    public SurfaceTexture s2;
    public boolean s3;
    public Surface t2;
    public boolean t3;
    public MediaPlayer u2;
    public boolean u3;
    public PlayTask v2;
    public int v3;
    public boolean w2;
    public boolean w3;
    public boolean x2;
    public int x3;
    public boolean y2;
    public int y3;
    public boolean z2;
    public boolean z3;
    public final Runnable a4 = new Runnable() { // from class: com.mycompany.app.video.VideoActivity.46
        @Override // java.lang.Runnable
        public final void run() {
            VideoActivity videoActivity = VideoActivity.this;
            videoActivity.Z3 = false;
            VideoActivity.K0(videoActivity);
        }
    };
    public final Runnable e4 = new Runnable() { // from class: com.mycompany.app.video.VideoActivity.47
        @Override // java.lang.Runnable
        public final void run() {
            VideoActivity videoActivity = VideoActivity.this;
            videoActivity.d4 = false;
            VideoActivity.L0(videoActivity, videoActivity.b4);
        }
    };
    public final Runnable k4 = new Runnable() { // from class: com.mycompany.app.video.VideoActivity.80
        @Override // java.lang.Runnable
        public final void run() {
            try {
                VideoActivity.N0(VideoActivity.this);
            } catch (Exception unused) {
            }
        }
    };
    public final Runnable m4 = new Runnable() { // from class: com.mycompany.app.video.VideoActivity.81
        @Override // java.lang.Runnable
        public final void run() {
            int i;
            int subBottom;
            MySizeFrame mySizeFrame;
            final VideoActivity videoActivity = VideoActivity.this;
            videoActivity.A3 = false;
            int i2 = videoActivity.n4;
            boolean z = videoActivity.o4;
            boolean z2 = videoActivity.p4;
            if (z) {
                videoActivity.O1();
                return;
            }
            if (i2 == 1) {
                WebVideoProgress webVideoProgress = videoActivity.N1;
                if (webVideoProgress != null) {
                    webVideoProgress.d(true, false);
                    return;
                }
                return;
            }
            if (i2 == 2) {
                WebVideoProgress webVideoProgress2 = videoActivity.O1;
                if (webVideoProgress2 != null) {
                    webVideoProgress2.d(true, false);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                WebVideoProgress webVideoProgress3 = videoActivity.P1;
                if (webVideoProgress3 != null) {
                    webVideoProgress3.d(true, false);
                    videoActivity.Q1.setSkipDraw(false);
                    if (z2 && videoActivity.E2 >= 0 && (mySizeFrame = videoActivity.K1) != null) {
                        mySizeFrame.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.82
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoActivity videoActivity2 = VideoActivity.this;
                                videoActivity2.h(videoActivity2.E2);
                            }
                        }, 100L);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i2 == 4 && videoActivity.D3 != null) {
                boolean h0 = videoActivity.h0();
                if (h0) {
                    i = PrefSub.m;
                } else {
                    i = PrefSub.l;
                }
                VideoSubLayout videoSubLayout = videoActivity.D3;
                String str = null;
                if (!videoSubLayout.p) {
                    subBottom = videoSubLayout.getSubBottom();
                } else {
                    videoSubLayout.p = false;
                    videoSubLayout.i(null, false);
                    subBottom = videoSubLayout.getSubBottom();
                }
                if (subBottom != i) {
                    if (h0) {
                        PrefSub.m = subBottom;
                        PrefSet.f(videoActivity.f1, 10, subBottom, "mPosLand");
                    } else {
                        PrefSub.l = subBottom;
                        PrefSet.f(videoActivity.f1, 10, subBottom, "mPosPort");
                    }
                }
                MyTextView myTextView = videoActivity.F3;
                if (myTextView != null) {
                    myTextView.setText(Integer.toString(subBottom));
                    videoActivity.E3.d(true, false);
                }
                SubtitleItem W0 = videoActivity.W0(videoActivity.L3);
                VideoSubLayout videoSubLayout2 = videoActivity.D3;
                if (W0 != null) {
                    str = W0.b;
                }
                videoSubLayout2.setText(str);
            }
        }
    };

    /* renamed from: com.mycompany.app.video.VideoActivity$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements Runnable {
        public AnonymousClass16() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MyFadeFrame Z0;
            final VideoActivity videoActivity = VideoActivity.this;
            boolean z = videoActivity.R3;
            if (PrefZone.b0 && !videoActivity.z1() && (Z0 = VideoActivity.Z0(videoActivity)) != null) {
                videoActivity.S1 = Z0;
                Z0.setListener(new MyFadeListener() { // from class: com.mycompany.app.video.VideoActivity.17
                    @Override // com.mycompany.app.view.MyFadeListener
                    public final void a(boolean z2) {
                        VideoActivity videoActivity2;
                        MyFadeFrame myFadeFrame;
                        if (!z2 && (myFadeFrame = (videoActivity2 = VideoActivity.this).S1) != null && videoActivity2.K1 != null) {
                            myFadeFrame.f();
                            videoActivity2.K1.removeView(videoActivity2.S1);
                            videoActivity2.S1 = null;
                        }
                    }

                    @Override // com.mycompany.app.view.MyFadeListener
                    public final void b(boolean z2, boolean z3) {
                    }
                });
                videoActivity.S1.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.video.VideoActivity.18
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        boolean z2 = PrefZone.b0;
                        VideoActivity videoActivity2 = VideoActivity.this;
                        if (z2) {
                            PrefZone.b0 = false;
                            PrefSet.d(15, videoActivity2.f1, "mGuideZoom", false);
                        }
                        MyFadeFrame myFadeFrame = videoActivity2.S1;
                        if (myFadeFrame != null) {
                            myFadeFrame.d(true);
                        }
                        return false;
                    }
                });
                if (z) {
                    videoActivity.S1.setVisibility(4);
                }
                videoActivity.K1.addView(videoActivity.S1, -1, -1);
                if (z) {
                    videoActivity.S1.h(true);
                }
            }
        }
    }

    /* renamed from: com.mycompany.app.video.VideoActivity$25, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass25 implements Runnable {
        public AnonymousClass25() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            boolean hasWindowFocus;
            MediaPlayer mediaPlayer;
            VideoActivity videoActivity = VideoActivity.this;
            if (videoActivity.K1 == null) {
                return;
            }
            boolean z2 = videoActivity.I2;
            if (z2) {
                videoActivity.C2 = z2;
                videoActivity.I2 = false;
            } else {
                if (videoActivity.b2 == null) {
                    View a0 = videoActivity.a0();
                    if (a0 == null) {
                        hasWindowFocus = false;
                    } else {
                        hasWindowFocus = a0.hasWindowFocus();
                    }
                    if (!hasWindowFocus) {
                        z = false;
                        videoActivity.M1(z);
                    }
                }
                z = true;
                videoActivity.M1(z);
            }
            int i = videoActivity.G2;
            if (i > 0) {
                videoActivity.h(i);
                videoActivity.G2 = 0;
            }
            if (videoActivity.k2 && ((mediaPlayer = videoActivity.u2) == null || mediaPlayer.getVideoWidth() == 0 || videoActivity.u2.getVideoHeight() == 0)) {
                videoActivity.m1(false);
            }
            VideoActivity.E0(videoActivity, 800);
        }
    }

    /* renamed from: com.mycompany.app.video.VideoActivity$26, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass26 implements Runnable {
        public AnonymousClass26() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (PrefVideo.p) {
                return;
            }
            VideoActivity.this.c();
        }
    }

    /* renamed from: com.mycompany.app.video.VideoActivity$29, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass29 implements Runnable {
        public AnonymousClass29() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            VideoActivity.this.B3 = false;
        }
    }

    /* renamed from: com.mycompany.app.video.VideoActivity$33, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass33 implements Runnable {
        public AnonymousClass33() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            VideoActivity videoActivity = VideoActivity.this;
            MyWebSafe myWebSafe = videoActivity.n3;
            if (myWebSafe == null) {
                videoActivity.p3 = false;
                return;
            }
            myWebSafe.setWebViewClient(new LocalWebViewClient());
            MySizeFrame mySizeFrame = videoActivity.K1;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.33.1
                @Override // java.lang.Runnable
                public final void run() {
                    VideoActivity videoActivity2 = VideoActivity.this;
                    MyWebSafe myWebSafe2 = videoActivity2.n3;
                    if (myWebSafe2 == null) {
                        videoActivity2.p3 = false;
                        return;
                    }
                    videoActivity2.q3 = true;
                    myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                    MySizeFrame mySizeFrame2 = videoActivity2.K1;
                    if (mySizeFrame2 == null) {
                        return;
                    }
                    mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.33.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass33 anonymousClass33 = AnonymousClass33.this;
                            VideoActivity videoActivity3 = VideoActivity.this;
                            if (videoActivity3.n3 == null) {
                                videoActivity3.p3 = false;
                            } else {
                                VideoActivity.G0(videoActivity3);
                                VideoActivity.this.p3 = false;
                            }
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.video.VideoActivity$37, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass37 implements Runnable {

        /* renamed from: com.mycompany.app.video.VideoActivity$37$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.video.VideoActivity$37$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC02211 implements Runnable {
                public RunnableC02211() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    MyWebSafe myWebSafe;
                    AnonymousClass37 anonymousClass37 = AnonymousClass37.this;
                    VideoActivity videoActivity = VideoActivity.this;
                    if (videoActivity.s3 && videoActivity.v3 == 1 && (myWebSafe = videoActivity.n3) != null) {
                        MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.play();}})();", false);
                    }
                    MySizeFrame mySizeFrame = VideoActivity.this.K1;
                    if (mySizeFrame == null) {
                        return;
                    }
                    mySizeFrame.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.37.1.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            VideoActivity videoActivity2 = VideoActivity.this;
                            if (videoActivity2.u3) {
                                videoActivity2.u3 = false;
                                videoActivity2.G1(true);
                                videoActivity2.m1(false);
                            }
                            VideoActivity videoActivity3 = VideoActivity.this;
                            if (videoActivity3.v3 == 1) {
                                videoActivity3.v3 = 2;
                                videoActivity3.P1();
                            }
                            VideoActivity videoActivity4 = VideoActivity.this;
                            if (!videoActivity4.w3) {
                                return;
                            }
                            videoActivity4.w3 = false;
                            videoActivity4.m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.37.1.1.1.1
                                /* JADX WARN: Code restructure failed: missing block: B:7:0x005f, code lost:
                                
                                    r2 = r1.f17015a;
                                    r1 = r1.b;
                                 */
                                @Override // java.lang.Runnable
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                    To view partially-correct add '--show-bad-code' argument
                                */
                                public final void run() {
                                    /*
                                        r5 = this;
                                        com.mycompany.app.video.VideoActivity$37$1$1$1 r0 = com.mycompany.app.video.VideoActivity.AnonymousClass37.AnonymousClass1.RunnableC02211.RunnableC02221.this
                                        com.mycompany.app.video.VideoActivity$37$1$1 r0 = com.mycompany.app.video.VideoActivity.AnonymousClass37.AnonymousClass1.RunnableC02211.this
                                        com.mycompany.app.video.VideoActivity$37$1 r0 = com.mycompany.app.video.VideoActivity.AnonymousClass37.AnonymousClass1.this
                                        com.mycompany.app.video.VideoActivity$37 r0 = com.mycompany.app.video.VideoActivity.AnonymousClass37.this
                                        com.mycompany.app.video.VideoActivity r0 = com.mycompany.app.video.VideoActivity.this
                                        int r1 = com.mycompany.app.video.VideoActivity.r4
                                        r1 = 0
                                        java.lang.String r2 = r0.e2     // Catch: java.lang.Throwable -> L5d
                                        org.jsoup.Connection r2 = org.jsoup.Jsoup.connect(r2)     // Catch: java.lang.Throwable -> L5d
                                        java.lang.String r3 = r0.e2     // Catch: java.lang.Throwable -> L5d
                                        org.jsoup.Connection r2 = r2.referrer(r3)     // Catch: java.lang.Throwable -> L5d
                                        android.content.Context r3 = r0.f1     // Catch: java.lang.Throwable -> L5d
                                        java.lang.String r3 = com.mycompany.app.main.MainUtil.t3(r3)     // Catch: java.lang.Throwable -> L5d
                                        org.jsoup.Connection r2 = r2.userAgent(r3)     // Catch: java.lang.Throwable -> L5d
                                        org.jsoup.nodes.Document r2 = r2.get()     // Catch: java.lang.Throwable -> L5d
                                        if (r2 != 0) goto L2a
                                        goto L5d
                                    L2a:
                                        org.json.JSONObject r2 = com.mycompany.app.web.WebReadTask.v(r2)     // Catch: java.lang.Throwable -> L5d
                                        if (r2 != 0) goto L31
                                        goto L5d
                                    L31:
                                        java.lang.String r3 = "streamingData"
                                        org.json.JSONObject r2 = r2.getJSONObject(r3)     // Catch: java.lang.Throwable -> L5d
                                        java.lang.String r3 = "formats"
                                        org.json.JSONArray r2 = r2.getJSONArray(r3)     // Catch: java.lang.Throwable -> L5d
                                        r3 = 0
                                        org.json.JSONObject r2 = r2.getJSONObject(r3)     // Catch: java.lang.Throwable -> L5d
                                        if (r2 != 0) goto L45
                                        goto L5d
                                    L45:
                                        java.lang.String r3 = "width"
                                        int r3 = r2.getInt(r3)     // Catch: java.lang.Throwable -> L5d
                                        if (r3 > 0) goto L4e
                                        goto L5d
                                    L4e:
                                        java.lang.String r4 = "height"
                                        int r2 = r2.getInt(r4)     // Catch: java.lang.Throwable -> L5d
                                        if (r2 > 0) goto L57
                                        goto L5d
                                    L57:
                                        com.mycompany.app.main.MainUtil$SizeItem r4 = new com.mycompany.app.main.MainUtil$SizeItem     // Catch: java.lang.Throwable -> L5d
                                        r4.<init>(r3, r2)     // Catch: java.lang.Throwable -> L5d
                                        r1 = r4
                                    L5d:
                                        if (r1 == 0) goto L64
                                        int r2 = r1.f17015a
                                        int r1 = r1.b
                                        goto L68
                                    L64:
                                        r2 = 1280(0x500, float:1.794E-42)
                                        r1 = 720(0x2d0, float:1.009E-42)
                                    L68:
                                        int r3 = r0.x3
                                        if (r3 != r2) goto L71
                                        int r3 = r0.y3
                                        if (r3 != r1) goto L71
                                        goto L87
                                    L71:
                                        r0.x3 = r2
                                        r0.y3 = r1
                                        android.app.PictureInPictureParams$Builder r1 = r0.b2
                                        if (r1 != 0) goto L7a
                                        goto L87
                                    L7a:
                                        com.mycompany.app.view.MySizeFrame r1 = r0.K1
                                        if (r1 != 0) goto L7f
                                        goto L87
                                    L7f:
                                        com.mycompany.app.video.VideoActivity$38 r2 = new com.mycompany.app.video.VideoActivity$38
                                        r2.<init>()
                                        r1.post(r2)
                                    L87:
                                        return
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.video.VideoActivity.AnonymousClass37.AnonymousClass1.RunnableC02211.RunnableC02221.RunnableC02231.run():void");
                                }
                            });
                        }
                    }, 100L);
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                VideoActivity videoActivity = VideoActivity.this;
                if (MainUtil.m8() && Float.compare(PrefZtwo.W, 1.0f) != 0 && videoActivity.s3 && videoActivity.v3 == 1 && videoActivity.n3 != null) {
                    MainUtil.J(videoActivity.n3, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.playbackRate=" + PrefZtwo.W + ";}})();", false);
                }
                MySizeFrame mySizeFrame = videoActivity.K1;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.postDelayed(new RunnableC02211(), 100L);
            }
        }

        public AnonymousClass37() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z = PrefVideo.p;
            VideoActivity videoActivity = VideoActivity.this;
            if (z && videoActivity.s3 && videoActivity.v3 == 1 && videoActivity.n3 != null) {
                MainUtil.J(videoActivity.n3, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.loop=" + PrefVideo.p + ";}})();", false);
            }
            MySizeFrame mySizeFrame = videoActivity.K1;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.postDelayed(new AnonymousClass1(), 100L);
        }
    }

    /* renamed from: com.mycompany.app.video.VideoActivity$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements TextureView.SurfaceTextureListener {
        public AnonymousClass4() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            VideoActivity videoActivity = VideoActivity.this;
            videoActivity.s2 = surfaceTexture;
            Handler handler = videoActivity.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    VideoActivity videoActivity2 = VideoActivity.this;
                    SurfaceTexture surfaceTexture2 = videoActivity2.s2;
                    videoActivity2.s2 = null;
                    if (surfaceTexture2 != null) {
                        videoActivity2.t2 = new Surface(surfaceTexture2);
                        Handler handler2 = videoActivity2.O0;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.4.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoActivity videoActivity3 = VideoActivity.this;
                                int i3 = VideoActivity.r4;
                                videoActivity3.R0();
                            }
                        });
                    }
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            VideoActivity videoActivity = VideoActivity.this;
            videoActivity.s2 = null;
            videoActivity.t2 = null;
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            VideoActivity videoActivity = VideoActivity.this;
            MySizeFrame mySizeFrame = videoActivity.K1;
            if (mySizeFrame != null) {
                int width = mySizeFrame.getWidth();
                int height = videoActivity.K1.getHeight();
                if (videoActivity.O2 == width && videoActivity.P2 == height) {
                    return;
                }
                videoActivity.O2 = width;
                videoActivity.P2 = height;
                videoActivity.T2 = false;
                videoActivity.E1(false);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            VideoActivity.M0(VideoActivity.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.video.VideoActivity$72, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass72 implements VideoAudio.AudioListener {
        public AnonymousClass72() {
        }

        @Override // com.mycompany.app.video.VideoAudio.AudioListener
        public final int a() {
            return VideoActivity.this.e();
        }
    }

    /* renamed from: com.mycompany.app.video.VideoActivity$78, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass78 implements Runnable {
        public AnonymousClass78() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            VideoActivity videoActivity;
            VideoActivity videoActivity2 = VideoActivity.this;
            if (videoActivity2.D3 == null) {
                VideoSubLayout videoSubLayout = videoActivity2.C3;
                videoActivity2.C3 = null;
                if (videoSubLayout != null) {
                    videoActivity2.D3 = videoSubLayout;
                    if (videoSubLayout.h == null && (videoActivity = videoSubLayout.f18484c) != null) {
                        FrameLayout frameLayout = new FrameLayout(videoActivity);
                        AppCompatTextView appCompatTextView = new AppCompatTextView(videoActivity, null);
                        appCompatTextView.setGravity(17);
                        appCompatTextView.setTextColor(-1);
                        appCompatTextView.setLineSpacing((int) MainUtil.G(videoActivity, 5.0f), 1.0f);
                        appCompatTextView.setVisibility(8);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams.gravity = 17;
                        frameLayout.addView(appCompatTextView, layoutParams);
                        MyTextSub myTextSub = new MyTextSub(videoActivity);
                        myTextSub.setGravity(17);
                        myTextSub.setTextColor(-1);
                        myTextSub.setLineSpacing((int) MainUtil.G(videoActivity, 5.0f), 1.0f);
                        myTextSub.setVisibility(8);
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                        layoutParams2.gravity = 17;
                        frameLayout.addView(myTextSub, layoutParams2);
                        AppCompatTextView appCompatTextView2 = new AppCompatTextView(videoActivity, null);
                        appCompatTextView2.setGravity(17);
                        appCompatTextView2.setTextColor(-1);
                        appCompatTextView2.setLineSpacing((int) MainUtil.G(videoActivity, 5.0f), 1.0f);
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams3.gravity = 17;
                        frameLayout.addView(appCompatTextView2, layoutParams3);
                        videoSubLayout.addView(frameLayout, -1, -2);
                        videoSubLayout.h = appCompatTextView;
                        videoSubLayout.i = myTextSub;
                        videoSubLayout.j = appCompatTextView2;
                        myTextSub.setOutlineType(2);
                    }
                    VideoSubLayout videoSubLayout2 = videoActivity2.D3;
                    MySizeFrame mySizeFrame = videoActivity2.K1;
                    videoSubLayout2.f = videoActivity2;
                    videoSubLayout2.g = mySizeFrame;
                    videoSubLayout2.h(PrefSub.n, PrefSub.o, PrefSub.q);
                    videoActivity2.N3 = new EventHandler(videoActivity2);
                }
            }
            Handler handler = videoActivity2.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.78.1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v0, types: [android.widget.LinearLayout, com.mycompany.app.web.WebVideoProgress, android.view.View, com.mycompany.app.view.MyFadeLinear, android.view.ViewGroup] */
                @Override // java.lang.Runnable
                public final void run() {
                    Context context;
                    VideoActivity videoActivity3 = VideoActivity.this;
                    if (videoActivity3.E3 == null && (context = videoActivity3.f1) != null) {
                        ?? myFadeLinear = new MyFadeLinear(context);
                        int G = (int) MainUtil.G(context, 20.0f);
                        myFadeLinear.setPadding(G, G, G, G);
                        myFadeLinear.setGravity(16);
                        myFadeLinear.setBaselineAligned(false);
                        myFadeLinear.setOrientation(0);
                        myFadeLinear.setTouchable(true);
                        myFadeLinear.setAutoHide(true);
                        myFadeLinear.setVisibility(8);
                        ImageView imageView = new ImageView(context);
                        imageView.setImageResource(R.drawable.ic_sub_pos);
                        int G2 = (int) MainUtil.G(context, 36.0f);
                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(G2, G2);
                        layoutParams4.gravity = 8388627;
                        myFadeLinear.addView(imageView, layoutParams4);
                        MyTextView myTextView = new MyTextView(context);
                        myTextView.setMinWidth((int) MainUtil.G(context, 90.0f));
                        myTextView.setGravity(1);
                        myTextView.setTextSize(1, 40.0f);
                        myTextView.setTextColor(-1);
                        myTextView.setIncludeFontPadding(false);
                        myTextView.setOutlineColor(-16777216);
                        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams5.gravity = 8388627;
                        layoutParams5.setMarginStart((int) MainUtil.G(context, 10.0f));
                        myFadeLinear.addView(myTextView, layoutParams5);
                        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams6.gravity = 17;
                        videoActivity3.K1.addView((View) myFadeLinear, layoutParams6);
                        videoActivity3.E3 = myFadeLinear;
                        videoActivity3.F3 = myTextView;
                        myFadeLinear.x = true;
                        myFadeLinear.y = 4;
                        Paint paint = new Paint();
                        myFadeLinear.G = paint;
                        paint.setAntiAlias(true);
                        myFadeLinear.G.setStyle(Paint.Style.FILL);
                        myFadeLinear.G.setColor(1627389952);
                        myFadeLinear.H = new RectF();
                    }
                    Handler handler2 = videoActivity3.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.78.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            VideoActivity videoActivity4 = VideoActivity.this;
                            int i = VideoActivity.r4;
                            videoActivity4.B1();
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class CropTask extends MyAsyncTask {
        public final WeakReference e;
        public Bitmap f;

        public CropTask(VideoActivity videoActivity) {
            WeakReference weakReference = new WeakReference(videoActivity);
            this.e = weakReference;
            VideoActivity videoActivity2 = (VideoActivity) weakReference.get();
            if (videoActivity2 == null || videoActivity2.Q1 == null) {
                return;
            }
            videoActivity2.G1(false);
            videoActivity2.Q1.l();
            this.f = videoActivity2.L1.getBitmap();
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x00d5, code lost:
        
            if (com.mycompany.app.main.MainUtil.f6(r9) != false) goto L12;
         */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 220
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.video.VideoActivity.CropTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            VideoActivity videoActivity;
            WeakReference weakReference = this.e;
            if (weakReference != null && (videoActivity = (VideoActivity) weakReference.get()) != null) {
                videoActivity.U2 = null;
                if (videoActivity.Q1 == null) {
                    return;
                }
                videoActivity.G1(true);
                videoActivity.Q1.f(true);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final VideoActivity videoActivity;
            WeakReference weakReference = this.e;
            if (weakReference != null && (videoActivity = (VideoActivity) weakReference.get()) != null) {
                videoActivity.U2 = null;
                if (videoActivity.Q1 != null) {
                    videoActivity.G1(true);
                    videoActivity.Q1.f(true);
                    Bitmap bitmap = this.f;
                    if (videoActivity.y1()) {
                        return;
                    }
                    DialogCapture dialogCapture = videoActivity.V2;
                    if (dialogCapture != null) {
                        dialogCapture.dismiss();
                        videoActivity.V2 = null;
                    }
                    if (!MainUtil.f6(bitmap)) {
                        MainUtil.e8(videoActivity, R.string.image_fail);
                        return;
                    }
                    videoActivity.M1.o(true);
                    DialogCapture dialogCapture2 = new DialogCapture(videoActivity, bitmap, false, videoActivity.r2);
                    videoActivity.V2 = dialogCapture2;
                    dialogCapture2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.video.VideoActivity.43
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            int i = VideoActivity.r4;
                            VideoActivity videoActivity2 = VideoActivity.this;
                            DialogCapture dialogCapture3 = videoActivity2.V2;
                            if (dialogCapture3 != null) {
                                dialogCapture3.dismiss();
                                videoActivity2.V2 = null;
                            }
                        }
                    });
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f18434a;

        public EventHandler(VideoActivity videoActivity) {
            super(Looper.getMainLooper());
            this.f18434a = new WeakReference(videoActivity);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            EventHandler eventHandler;
            VideoSubLayout videoSubLayout;
            VideoActivity videoActivity = (VideoActivity) this.f18434a.get();
            if (videoActivity != null && message.what == 0 && (eventHandler = videoActivity.N3) != null) {
                eventHandler.removeMessages(0);
                if (videoActivity.u2 != null && (videoSubLayout = videoActivity.D3) != null && videoActivity.w2 && videoSubLayout.getVisibility() != 8 && videoActivity.a1()) {
                    String str = null;
                    if (videoActivity.L1.getVisibility() != 0) {
                        videoActivity.D3.setText(null);
                        if (videoActivity.u2.isPlaying()) {
                            videoActivity.N3.sendEmptyMessageDelayed(0, 100L);
                            return;
                        }
                        return;
                    }
                    int V0 = videoActivity.V0(videoActivity.L3, videoActivity.e());
                    videoActivity.L3 = V0;
                    if (V0 != videoActivity.M3) {
                        SubtitleItem W0 = videoActivity.W0(V0);
                        VideoSubLayout videoSubLayout2 = videoActivity.D3;
                        if (W0 != null) {
                            str = W0.b;
                        }
                        videoSubLayout2.setText(str);
                    }
                    videoActivity.M3 = videoActivity.L3;
                    if (videoActivity.u2.isPlaying()) {
                        videoActivity.N3.sendEmptyMessageDelayed(0, 100L);
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class EventReceiver extends BroadcastReceiver {
        public EventReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                action.getClass();
                char c2 = 65535;
                switch (action.hashCode()) {
                    case -751345213:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_MUSIC_PAUSE")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 1908563306:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_VIDEO_FFWD")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 1908574838:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_VIDEO_FRWD")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 1908866321:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_VIDEO_PLAY")) {
                            c2 = 3;
                            break;
                        }
                        break;
                }
                VideoActivity videoActivity = VideoActivity.this;
                switch (c2) {
                    case 0:
                        if (videoActivity.h3) {
                            videoActivity.h3 = false;
                            return;
                        } else {
                            videoActivity.c();
                            return;
                        }
                    case 1:
                        VideoActivity.H0(videoActivity);
                        return;
                    case 2:
                        VideoActivity.I0(videoActivity);
                        return;
                    case 3:
                        int i = VideoActivity.r4;
                        videoActivity.N1();
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class PlayTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;
        public boolean g;

        public PlayTask(VideoActivity videoActivity) {
            WeakReference weakReference = new WeakReference(videoActivity);
            this.e = weakReference;
            VideoActivity videoActivity2 = (VideoActivity) weakReference.get();
            if (videoActivity2 == null) {
                return;
            }
            this.f = videoActivity2.H2;
            videoActivity2.H2 = false;
            videoActivity2.L2 = 0;
            videoActivity2.M2 = 0;
            videoActivity2.N2 = 0;
        }

        /* JADX WARN: Type inference failed for: r4v6, types: [com.mycompany.app.main.MainUtil$SizeItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            VideoActivity videoActivity;
            Uri uri;
            HashMap hashMap;
            MainUtil.SizeItem sizeItem;
            String str;
            WeakReference weakReference = this.e;
            if (weakReference != null && (videoActivity = (VideoActivity) weakReference.get()) != null && !this.f12839c && (uri = videoActivity.d2) != null) {
                Cursor cursor = null;
                if (videoActivity.k2) {
                    if (videoActivity.l2) {
                        str = null;
                    } else {
                        str = videoActivity.o2;
                    }
                    hashMap = MainUtil.v0(videoActivity.f1, videoActivity.e2, str);
                } else {
                    hashMap = null;
                }
                MediaPlayer mediaPlayer = videoActivity.u2;
                if (mediaPlayer != null) {
                    int i = 0;
                    try {
                        if (hashMap != null) {
                            mediaPlayer.setDataSource(videoActivity.f1, uri, hashMap);
                        } else {
                            mediaPlayer.setDataSource(videoActivity.f1, uri);
                        }
                    } catch (Exception unused) {
                        this.g = true;
                        this.f = false;
                    }
                    if (!videoActivity.k2) {
                        if (!this.g) {
                            Context context = videoActivity.f1;
                            if (context != null) {
                                ?? obj = new Object();
                                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                                try {
                                    mediaMetadataRetriever.setDataSource(context, uri);
                                    obj.f17015a = MainUtil.G6(mediaMetadataRetriever.extractMetadata(18));
                                    obj.b = MainUtil.G6(mediaMetadataRetriever.extractMetadata(19));
                                    obj.f17016c = MainUtil.G6(mediaMetadataRetriever.extractMetadata(24));
                                } catch (Exception unused2) {
                                }
                                MainUtil.M6(mediaMetadataRetriever);
                                sizeItem = obj;
                            } else {
                                sizeItem = null;
                            }
                            if (sizeItem != null) {
                                videoActivity.L2 = sizeItem.f17015a;
                                videoActivity.M2 = sizeItem.b;
                                videoActivity.N2 = sizeItem.f17016c;
                            }
                        }
                        if (TextUtils.isEmpty(videoActivity.r2)) {
                            videoActivity.r2 = MainUtil.b1(videoActivity.f1, videoActivity.e2);
                        }
                    }
                    if (this.f) {
                        Context context2 = videoActivity.f1;
                        String str2 = videoActivity.e2;
                        DbBookVpos dbBookVpos = DbBookVpos.f12964c;
                        if (context2 != null && !TextUtils.isEmpty(str2)) {
                            try {
                                cursor = DbUtil.g(DbBookVpos.a(context2).getWritableDatabase(), "DbBookVpos_table", new String[]{"_pos"}, "_path=?", new String[]{str2}, null);
                                if (cursor != null && cursor.moveToFirst()) {
                                    i = cursor.getInt(cursor.getColumnIndex("_pos"));
                                }
                            } catch (Exception unused3) {
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                        }
                        videoActivity.G2 = i;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            VideoActivity videoActivity;
            WeakReference weakReference = this.e;
            if (weakReference == null || (videoActivity = (VideoActivity) weakReference.get()) == null) {
                return;
            }
            videoActivity.v2 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            VideoActivity videoActivity;
            MediaPlayer mediaPlayer;
            WeakReference weakReference = this.e;
            if (weakReference != null && (videoActivity = (VideoActivity) weakReference.get()) != null) {
                videoActivity.v2 = null;
                if (!this.g && (mediaPlayer = videoActivity.u2) != null) {
                    try {
                        mediaPlayer.prepareAsync();
                        if (videoActivity.u2 == null) {
                            return;
                        }
                        videoActivity.G1(true);
                        videoActivity.P1();
                        return;
                    } catch (Exception unused) {
                        VideoActivity.J0(videoActivity);
                        return;
                    }
                }
                VideoActivity.J0(videoActivity);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SubTask extends MyAsyncTask {
        public final WeakReference e;
        public ArrayList f;
        public final boolean g;

        public SubTask(VideoActivity videoActivity, boolean z) {
            WeakReference weakReference = new WeakReference(videoActivity);
            this.e = weakReference;
            if (((VideoActivity) weakReference.get()) == null) {
                return;
            }
            this.g = z;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            final VideoActivity videoActivity;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (videoActivity = (VideoActivity) weakReference.get()) != null && !this.f12839c) {
                Context context = videoActivity.f1;
                String str = videoActivity.G3;
                Subtitle.SubtitleListener subtitleListener = new Subtitle.SubtitleListener() { // from class: com.mycompany.app.video.VideoActivity.SubTask.1
                    @Override // com.mycompany.app.subtitle.Subtitle.SubtitleListener
                    public final boolean a() {
                        if (VideoActivity.this.J3 == null) {
                            return true;
                        }
                        return false;
                    }
                };
                ArrayList arrayList = null;
                if (!TextUtils.isEmpty(str)) {
                    String W0 = MainUtil.W0(MainUri.k(context, str));
                    if (!TextUtils.isEmpty(W0)) {
                        i = 0;
                        while (i < 10) {
                            if (W0.equals(Subtitle.f18306a[i])) {
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                    i = -1;
                    if (i != -1) {
                        try {
                            arrayList = Subtitle.a(i, context.getContentResolver().openInputStream(Uri.parse(str)), MainUtil.o0(context.getContentResolver().openInputStream(Uri.parse(str))), subtitleListener);
                        } catch (Exception unused) {
                        }
                    }
                }
                this.f = arrayList;
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            VideoActivity videoActivity;
            WeakReference weakReference = this.e;
            if (weakReference == null || (videoActivity = (VideoActivity) weakReference.get()) == null) {
                return;
            }
            videoActivity.J3 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            VideoActivity videoActivity;
            WeakReference weakReference = this.e;
            if (weakReference != null && (videoActivity = (VideoActivity) weakReference.get()) != null) {
                videoActivity.J3 = null;
                videoActivity.K3 = this.f;
                boolean a1 = videoActivity.a1();
                boolean z = this.g;
                if (!a1) {
                    if (z) {
                        MainUtil.e8(videoActivity, R.string.invalid_file);
                        return;
                    }
                    return;
                }
                if (z) {
                    DbBookSub.e(videoActivity.f1, videoActivity.J2, videoActivity.G3, videoActivity.H3, videoActivity.I3);
                }
                if (videoActivity.D3 != null && videoActivity.E3 != null) {
                    videoActivity.B1();
                    return;
                }
                Handler handler = videoActivity.O0;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass78());
            }
        }
    }

    /* loaded from: classes3.dex */
    public class SystemRunnable implements Runnable {
        public SystemRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            VideoControl videoControl;
            VideoActivity videoActivity = VideoActivity.this;
            if (videoActivity.I1 != null && (videoControl = videoActivity.M1) != null && videoControl.s(null) && (videoActivity.I1.getSystemUiVisibility() & 4) != 4) {
                videoActivity.r0();
            }
        }
    }

    /* loaded from: classes3.dex */
    public class VideoCastListener implements CastActivity.MyCastListener {
        public VideoCastListener() {
        }

        @Override // com.mycompany.app.setting.CastActivity.MyCastListener
        public final void a() {
            CastSession castSession;
            final RemoteMediaClient j;
            final VideoActivity videoActivity = VideoActivity.this;
            if (!videoActivity.s3 && !videoActivity.i1 && (castSession = videoActivity.p1) != null && videoActivity.f1 != null && videoActivity.d2 != null && (j = castSession.j()) != null) {
                videoActivity.c();
                videoActivity.L1(true);
                j.u(new RemoteMediaClient.Callback() { // from class: com.mycompany.app.video.VideoActivity.VideoCastListener.1
                    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
                    public final void e() {
                        Preconditions.checkMainThread("Must be called from the main thread.");
                        j.h.remove(this);
                        VideoActivity videoActivity2 = VideoActivity.this;
                        if (videoActivity2.f1 == null) {
                            return;
                        }
                        videoActivity2.startActivity(new Intent(videoActivity2.f1, (Class<?>) ExpandedControlsActivity.class));
                        videoActivity2.finish();
                    }
                });
                CastSession castSession2 = videoActivity.p1;
                if (castSession2 != null && videoActivity.q4 == null) {
                    videoActivity.q4 = new CastUtil(videoActivity.f1, castSession2, videoActivity.O0, new CastUtil.CastSendListener() { // from class: com.mycompany.app.video.VideoActivity.85
                        @Override // com.mycompany.app.cast.CastUtil.CastSendListener
                        public final void a(boolean z) {
                            VideoActivity videoActivity2 = VideoActivity.this;
                            if (!z) {
                                int i = VideoActivity.r4;
                                videoActivity2.m1(true);
                                videoActivity2.j();
                                MainUtil.e8(videoActivity2, R.string.play_error);
                            }
                            CastUtil castUtil = videoActivity2.q4;
                            if (castUtil != null) {
                                castUtil.b();
                                videoActivity2.q4 = null;
                            }
                        }
                    });
                    videoActivity.q4.f(videoActivity.p2, videoActivity.e2, videoActivity.q2, videoActivity.r2, videoActivity.f(), videoActivity.e(), MainUtil.u2(videoActivity.r2));
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onYouLoaded(String str) {
            boolean equals = "1".equals(str);
            VideoActivity videoActivity = VideoActivity.this;
            if (!equals) {
                VideoActivity.F0(videoActivity);
                return;
            }
            if (videoActivity.v3 != 1) {
                videoActivity.v3 = 1;
                videoActivity.w3 = true;
            }
            MySizeFrame mySizeFrame = videoActivity.K1;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.postDelayed(new AnonymousClass37(), 100L);
        }

        @JavascriptInterface
        public void onYouPaused(String str) {
            boolean equals = "1".equals(str);
            VideoActivity videoActivity = VideoActivity.this;
            if (equals) {
                videoActivity.v3 = 3;
            } else {
                videoActivity.v3 = 2;
            }
            MySizeFrame mySizeFrame = videoActivity.K1;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    VideoActivity videoActivity2 = VideoActivity.this;
                    if (videoActivity2.u3) {
                        videoActivity2.u3 = false;
                        videoActivity2.G1(true);
                        videoActivity2.m1(false);
                    }
                    videoActivity2.P1();
                }
            });
        }
    }

    public static void D0(VideoActivity videoActivity, String str) {
        if (videoActivity.n3 != null) {
            if (MainUtil.D5(str)) {
                if (videoActivity.q3) {
                    videoActivity.q3 = false;
                    MyWebSafe myWebSafe = videoActivity.n3;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.39
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoActivity videoActivity2 = VideoActivity.this;
                                MyWebSafe myWebSafe2 = videoActivity2.n3;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                videoActivity2.q3 = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!videoActivity.q3) {
                videoActivity.q3 = true;
                MyWebSafe myWebSafe2 = videoActivity.n3;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.40
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoActivity videoActivity2 = VideoActivity.this;
                        MyWebSafe myWebSafe3 = videoActivity2.n3;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        videoActivity2.q3 = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void E0(VideoActivity videoActivity, int i) {
        if (videoActivity.x2 && videoActivity.w2 && videoActivity.u2 != null && videoActivity.L1 != null) {
            MySizeFrame mySizeFrame = videoActivity.K1;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.61
                @Override // java.lang.Runnable
                public final void run() {
                    MediaPlayer mediaPlayer;
                    VideoActivity videoActivity2 = VideoActivity.this;
                    if (videoActivity2.x2 && videoActivity2.w2 && (mediaPlayer = videoActivity2.u2) != null && videoActivity2.L1 != null) {
                        videoActivity2.x2 = false;
                        if (mediaPlayer.getDuration() > 0) {
                            VideoActivity.M0(videoActivity2);
                            return;
                        }
                        return;
                    }
                    videoActivity2.x2 = false;
                }
            }, i);
            return;
        }
        videoActivity.x2 = false;
    }

    public static void F0(VideoActivity videoActivity) {
        MySizeFrame mySizeFrame;
        if (!videoActivity.s3 || videoActivity.v3 != 0 || videoActivity.n3 == null || (mySizeFrame = videoActivity.K1) == null) {
            return;
        }
        mySizeFrame.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.36
            @Override // java.lang.Runnable
            public final void run() {
                MyWebSafe myWebSafe;
                VideoActivity videoActivity2 = VideoActivity.this;
                if (!videoActivity2.s3 || videoActivity2.v3 != 0 || (myWebSafe = videoActivity2.n3) == null) {
                    return;
                }
                MainUtil.J(myWebSafe, "(function(){var val=0;var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){function myYouPlay(evt){android.onYouPaused('0');}function myYouPause(evt){android.onYouPaused('1');}ele.addEventListener('playing',myYouPlay);ele.addEventListener('pause',myYouPause);val=1;}android.onYouLoaded(val);})();", true);
            }
        }, 300L);
    }

    public static void G0(VideoActivity videoActivity) {
        if (videoActivity.n3 != null) {
            if (videoActivity.s3) {
                videoActivity.A1();
                return;
            }
            videoActivity.G1(true);
            videoActivity.m1(false);
            String str = videoActivity.e2;
            String str2 = videoActivity.o2;
            if (videoActivity.n3 == null) {
                return;
            }
            HashMap v0 = MainUtil.v0(videoActivity.f1, str, str2);
            if (v0 != null) {
                videoActivity.n3.loadUrl(str, v0);
            } else {
                videoActivity.n3.loadUrl(str);
            }
        }
    }

    public static void H0(VideoActivity videoActivity) {
        MyWebSafe myWebSafe;
        boolean z = videoActivity.s3;
        if (z) {
            if (z && videoActivity.v3 != 0 && (myWebSafe = videoActivity.n3) != null) {
                MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){var pos=ele.currentTime;if(pos+10<ele.duration){ele.currentTime=pos+10;}else{ele.currentTime=ele.duration;}}})();", true);
                return;
            }
            return;
        }
        int f = videoActivity.f();
        if (f <= 0) {
            return;
        }
        int e = videoActivity.e() + 10000;
        if (e <= f) {
            f = e;
        }
        videoActivity.h(f);
    }

    public static void I0(VideoActivity videoActivity) {
        MyWebSafe myWebSafe;
        boolean z = videoActivity.s3;
        if (z) {
            if (z && videoActivity.v3 != 0 && (myWebSafe = videoActivity.n3) != null) {
                MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){var pos=ele.currentTime;if(pos>10){ele.currentTime=pos-10;}else{ele.currentTime=0;}}})();", true);
                return;
            }
            return;
        }
        if (videoActivity.f() <= 0) {
            return;
        }
        int e = videoActivity.e() - 10000;
        if (e < 0) {
            e = 0;
        }
        videoActivity.h(e);
    }

    public static void J0(VideoActivity videoActivity) {
        VideoAudio videoAudio = videoActivity.l3;
        if (videoAudio != null) {
            videoAudio.c();
        }
        if (videoActivity.u2 == null) {
            return;
        }
        videoActivity.z2 = true;
        videoActivity.I1(false);
        videoActivity.G1(true);
        videoActivity.m1(false);
        MainUtil.e8(videoActivity, R.string.play_error);
        videoActivity.m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.28
            @Override // java.lang.Runnable
            public final void run() {
                VideoActivity videoActivity2 = VideoActivity.this;
                MediaPlayer mediaPlayer = videoActivity2.u2;
                if (mediaPlayer != null) {
                    try {
                        mediaPlayer.reset();
                    } catch (IllegalStateException unused) {
                    }
                }
                MySizeFrame mySizeFrame = videoActivity2.K1;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.28.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoActivity videoActivity3 = VideoActivity.this;
                        int i = VideoActivity.r4;
                        videoActivity3.P1();
                    }
                });
            }
        });
    }

    public static void K0(VideoActivity videoActivity) {
        Runnable runnable = videoActivity.a4;
        if (videoActivity.K1 != null && !videoActivity.Z3) {
            int i = videoActivity.Y3;
            int i2 = PrefVideo.v;
            if (i != i2) {
                videoActivity.Z3 = true;
                videoActivity.Y3 = i2;
                MainUtil.g7(videoActivity.getWindow(), PrefVideo.v, PrefVideo.u);
                videoActivity.K1.removeCallbacks(runnable);
                videoActivity.K1.postDelayed(runnable, 100L);
            }
        }
    }

    public static void L0(VideoActivity videoActivity, int i) {
        Runnable runnable = videoActivity.e4;
        videoActivity.b4 = i;
        if (videoActivity.K1 != null && !videoActivity.d4 && videoActivity.c4 != i) {
            videoActivity.d4 = true;
            videoActivity.c4 = i;
            videoActivity.h(i);
            videoActivity.K1.removeCallbacks(runnable);
            videoActivity.K1.postDelayed(runnable, 100L);
        }
    }

    public static void M0(VideoActivity videoActivity) {
        if (videoActivity.w2) {
            videoActivity.m1(false);
            if (!videoActivity.T2) {
                videoActivity.E1(true);
            }
            if (videoActivity.D3 != null && videoActivity.u2 != null) {
                videoActivity.A(videoActivity.e());
                if (videoActivity.D3.getVisibility() != 8 && videoActivity.u2.isPlaying()) {
                    videoActivity.N3.removeMessages(0);
                    videoActivity.N3.sendEmptyMessage(0);
                }
            }
        }
    }

    public static void N0(VideoActivity videoActivity) {
        VideoControl videoControl;
        int y;
        VideoSubLayout videoSubLayout;
        int g;
        TextureView i;
        TextureView i2;
        MotionEvent motionEvent = videoActivity.l4;
        if (!videoActivity.A3 && motionEvent != null && (videoControl = videoActivity.M1) != null && videoActivity.V1 && !videoActivity.Z1) {
            if (!videoControl.n0 && !videoControl.q()) {
                int i3 = videoActivity.Y1;
                if (i3 == 0) {
                    float x = motionEvent.getX();
                    float abs = Math.abs(x - videoActivity.W1);
                    float abs2 = Math.abs(motionEvent.getY() - videoActivity.X1);
                    if (abs > abs2) {
                        if (abs > MainApp.r1) {
                            ZoomVideoAttacher zoomVideoAttacher = videoActivity.T1;
                            if (zoomVideoAttacher != null && (i2 = zoomVideoAttacher.i()) != null) {
                                zoomVideoAttacher.e();
                                RectF g2 = zoomVideoAttacher.g(zoomVideoAttacher.f());
                                if (g2 != null && g2.width() > i2.getWidth()) {
                                    videoActivity.Z1 = true;
                                    return;
                                }
                            }
                            if (PrefVideo.s) {
                                int f = videoActivity.f();
                                if (f > 0) {
                                    videoActivity.a2 = false;
                                    videoActivity.Y1 = 3;
                                    VideoControl videoControl2 = videoActivity.M1;
                                    if (videoControl2 != null) {
                                        videoControl2.o(true);
                                    }
                                    videoActivity.N1.d(false, false);
                                    videoActivity.O1.d(false, false);
                                    videoActivity.P1.n(f, videoActivity.e());
                                    videoActivity.Q1.setSkipDraw(true);
                                    return;
                                }
                                videoActivity.a2 = true;
                                VideoControl videoControl3 = videoActivity.M1;
                                if (videoControl3 != null) {
                                    videoControl3.o(true);
                                }
                                videoActivity.N1.d(false, false);
                                videoActivity.O1.d(false, false);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (!videoActivity.a2 && abs2 > MainApp.r1) {
                        ZoomVideoAttacher zoomVideoAttacher2 = videoActivity.T1;
                        if (zoomVideoAttacher2 != null && (i = zoomVideoAttacher2.i()) != null) {
                            zoomVideoAttacher2.e();
                            RectF g3 = zoomVideoAttacher2.g(zoomVideoAttacher2.f());
                            if (g3 != null && g3.height() > i.getHeight()) {
                                videoActivity.Z1 = true;
                                return;
                            }
                        }
                        if (videoActivity.K1 != null) {
                            if (x < r0.getWidth() / 2.0f) {
                                if (PrefVideo.r) {
                                    videoActivity.Y1 = 1;
                                    VideoControl videoControl4 = videoActivity.M1;
                                    if (videoControl4 != null) {
                                        videoControl4.o(true);
                                    }
                                    videoActivity.O1.d(false, false);
                                    videoActivity.P1.d(false, false);
                                    videoActivity.N1.m();
                                    videoActivity.Q1.setSkipDraw(false);
                                    return;
                                }
                                return;
                            }
                            if (PrefVideo.q) {
                                videoActivity.Y1 = 2;
                                VideoControl videoControl5 = videoActivity.M1;
                                if (videoControl5 != null) {
                                    videoControl5.o(true);
                                }
                                videoActivity.N1.d(false, false);
                                videoActivity.P1.d(false, false);
                                videoActivity.O1.m();
                                videoActivity.Q1.setSkipDraw(false);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i3 == 1) {
                    if (Float.compare(videoActivity.N1.k(motionEvent, motionEvent.getY() - videoActivity.X1), -1.0f) == 0) {
                        videoActivity.X1 = motionEvent.getY();
                        return;
                    }
                    return;
                }
                if (i3 == 2) {
                    if (Float.compare(videoActivity.O1.k(motionEvent, motionEvent.getY() - videoActivity.X1), -1.0f) == 0) {
                        videoActivity.X1 = motionEvent.getY();
                        return;
                    }
                    return;
                }
                if (i3 == 3) {
                    float x2 = motionEvent.getX() - videoActivity.W1;
                    int i4 = PrefVideo.t;
                    if (i4 > 0 && i4 != 100) {
                        x2 *= i4 / 100.0f;
                    }
                    if (Float.compare(videoActivity.P1.k(motionEvent, x2), -1.0f) == 0) {
                        videoActivity.W1 = motionEvent.getX();
                        return;
                    }
                    return;
                }
                if (i3 == 4 && (y = (int) (motionEvent.getY() - videoActivity.X1)) != 0 && (videoSubLayout = videoActivity.D3) != null && (g = videoSubLayout.g(y)) != -1) {
                    MyTextView myTextView = videoActivity.F3;
                    if (myTextView != null) {
                        myTextView.setText(Integer.toString(g));
                        videoActivity.E3.setVisibility(0);
                    }
                    videoActivity.X1 += y;
                    return;
                }
                return;
            }
            videoActivity.t1();
            videoActivity.N1.d(true, false);
            videoActivity.O1.d(true, false);
            videoActivity.P1.d(true, false);
            videoActivity.Q1.setSkipDraw(false);
        }
    }

    public static void O0(VideoActivity videoActivity, String str) {
        if (videoActivity.s3 && videoActivity.n3 != null) {
            if (TextUtils.isEmpty(videoActivity.e2) || !videoActivity.e2.equals(str)) {
                videoActivity.e2 = str;
                videoActivity.v1();
                MySizeFrame mySizeFrame = videoActivity.K1;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.35
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoActivity videoActivity2 = VideoActivity.this;
                        if (videoActivity2.K1 == null) {
                            return;
                        }
                        if (videoActivity2.s3) {
                            videoActivity2.A1();
                            return;
                        }
                        Intent o4 = MainUtil.o4(videoActivity2.f1);
                        o4.putExtra("EXTRA_PATH", videoActivity2.e2);
                        o4.addFlags(67108864);
                        videoActivity2.startActivity(o4);
                        videoActivity2.finish();
                    }
                });
            }
        }
    }

    public static void P0(VideoActivity videoActivity, boolean z) {
        int i;
        int i2;
        if (!videoActivity.y1()) {
            videoActivity.j1();
            VideoControl videoControl = videoActivity.M1;
            if (videoControl != null) {
                videoControl.o(true);
            }
            videoActivity.z3 = true;
            MainApp.K1 = true;
            videoActivity.j4 = z;
            if (z) {
                VideoAudio videoAudio = videoActivity.l3;
                if (videoAudio == null) {
                    return;
                }
                i = R.string.audio_sync;
                i2 = videoAudio.h;
            } else {
                i = R.string.sub_sync;
                i2 = videoActivity.H3;
            }
            DialogSeekSub dialogSeekSub = new DialogSeekSub(videoActivity, i, i2, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.video.VideoActivity.75
                @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                public final void a(int i3) {
                    VideoAudio.AudioListener audioListener;
                    VideoActivity videoActivity2 = VideoActivity.this;
                    if (videoActivity2.j4) {
                        VideoAudio videoAudio2 = videoActivity2.l3;
                        if (videoAudio2 != null) {
                            String str = videoActivity2.J2;
                            if (videoAudio2.f18444c != null && (audioListener = videoAudio2.b) != null && videoAudio2.h != i3) {
                                videoAudio2.h = i3;
                                videoAudio2.b(VideoActivity.this.e());
                                DbBookSub.f(videoAudio2.h, videoAudio2.f18443a, str, videoAudio2.g);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (videoActivity2.H3 == i3) {
                        return;
                    }
                    videoActivity2.H3 = i3;
                    videoActivity2.A(videoActivity2.e());
                    DbBookSub.e(videoActivity2.f1, videoActivity2.J2, videoActivity2.G3, videoActivity2.H3, videoActivity2.I3);
                }
            });
            videoActivity.Q3 = dialogSeekSub;
            dialogSeekSub.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.video.VideoActivity.76
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    int i3 = VideoActivity.r4;
                    VideoActivity.this.j1();
                }
            });
            videoActivity.Q3.E = true;
        }
    }

    public static MyFadeFrame Y0(Context context) {
        if (context == null) {
            return null;
        }
        int i = R.id.wv_updn_view;
        MyFadeFrame myFadeFrame = new MyFadeFrame(context);
        myFadeFrame.setBackgroundColor(-1593835520);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 8388627;
        myFadeFrame.addView(relativeLayout, layoutParams);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(i);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        relativeLayout.addView(linearLayout, -1, -2);
        FrameLayout frameLayout = new FrameLayout(context);
        int i2 = MainApp.F1;
        frameLayout.setPadding(i2, i2, i2, i2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        linearLayout.addView(frameLayout, layoutParams2);
        MyArrowView myArrowView = new MyArrowView(context);
        myArrowView.b(4);
        int i3 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
        layoutParams3.gravity = 1;
        frameLayout.addView(myArrowView, layoutParams3);
        MyTextView myTextView = new MyTextView(context);
        myTextView.setTextSize(1, 16.0f);
        myTextView.setTextColor(-1);
        myTextView.setText(R.string.control_bright);
        myTextView.setOutlineColor(-16777216);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 1;
        layoutParams4.topMargin = MainApp.h1;
        frameLayout.addView(myTextView, layoutParams4);
        FrameLayout frameLayout2 = new FrameLayout(context);
        int i4 = MainApp.F1;
        frameLayout2.setPadding(i4, i4, i4, i4);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -2);
        layoutParams5.weight = 1.0f;
        linearLayout.addView(frameLayout2, layoutParams5);
        MyArrowView myArrowView2 = new MyArrowView(context);
        myArrowView2.b(4);
        int i5 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams6.gravity = 1;
        frameLayout2.addView(myArrowView2, layoutParams6);
        MyTextView myTextView2 = new MyTextView(context);
        myTextView2.setTextSize(1, 16.0f);
        myTextView2.setTextColor(-1);
        myTextView2.setText(R.string.control_volume);
        myTextView2.setOutlineColor(-16777216);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams7.gravity = 1;
        layoutParams7.topMargin = MainApp.h1;
        frameLayout2.addView(myTextView2, layoutParams7);
        FrameLayout frameLayout3 = new FrameLayout(context);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(3, i);
        layoutParams8.addRule(14);
        layoutParams8.topMargin = MainApp.F1;
        relativeLayout.addView(frameLayout3, layoutParams8);
        FrameLayout frameLayout4 = new FrameLayout(context);
        int i6 = MainApp.F1;
        frameLayout4.setPadding(i6, i6, i6, i6);
        frameLayout3.addView(frameLayout4, -2, -2);
        MyArrowView myArrowView3 = new MyArrowView(context);
        myArrowView3.b(5);
        int i7 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(i7, i7);
        layoutParams9.gravity = 1;
        frameLayout4.addView(myArrowView3, layoutParams9);
        MyTextView myTextView3 = new MyTextView(context);
        myTextView3.setTextSize(1, 16.0f);
        myTextView3.setTextColor(-1);
        myTextView3.setText(R.string.control_seek);
        myTextView3.setOutlineColor(-16777216);
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams10.gravity = 1;
        layoutParams10.topMargin = MainApp.g1;
        frameLayout4.addView(myTextView3, layoutParams10);
        return myFadeFrame;
    }

    public static MyFadeFrame Z0(Context context) {
        if (context == null) {
            return null;
        }
        MyFadeFrame myFadeFrame = new MyFadeFrame(context);
        LinearLayout linearLayout = new LinearLayout(context);
        int i = MainApp.E1;
        linearLayout.setPadding(i, i, i, i);
        linearLayout.setBackgroundResource(R.drawable.round_guide_16);
        linearLayout.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) MainUtil.G(context, 132.0f), -2);
        layoutParams.gravity = 17;
        myFadeFrame.addView(linearLayout, layoutParams);
        View view = new View(context);
        view.setBackgroundResource(R.drawable.outline_pinch);
        int G = (int) MainUtil.G(context, 84.0f);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(G, G);
        layoutParams2.gravity = 1;
        linearLayout.addView(view, layoutParams2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setTextSize(1, 16.0f);
        appCompatTextView.setTextColor(-1);
        FrameLayout.LayoutParams d = a.d(appCompatTextView, R.string.guide_pinch, -2, -2);
        d.gravity = 1;
        d.topMargin = MainApp.F1;
        linearLayout.addView(appCompatTextView, d);
        return myFadeFrame;
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void A(int i) {
        VideoSubLayout videoSubLayout = this.D3;
        if (videoSubLayout != null && this.u2 != null && videoSubLayout.getVisibility() != 8 && a1()) {
            String str = null;
            if (this.L1.getVisibility() != 0) {
                this.D3.setText(null);
                return;
            }
            int V0 = V0(this.L3, i);
            this.L3 = V0;
            if (V0 != this.M3) {
                SubtitleItem W0 = W0(V0);
                VideoSubLayout videoSubLayout2 = this.D3;
                if (W0 != null) {
                    str = W0.b;
                }
                videoSubLayout2.setText(str);
            }
            this.M3 = this.L3;
        }
    }

    public final void A1() {
        this.u3 = true;
        this.v3 = 0;
        G1(false);
        this.m2 = true;
        MyCoverView myCoverView = this.Q1;
        if (myCoverView != null) {
            myCoverView.setBackgroundColor(-16777216);
        }
        L1(false);
        m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.34
            @Override // java.lang.Runnable
            public final void run() {
                VideoActivity videoActivity = VideoActivity.this;
                videoActivity.U3 = MainUtil.L1(videoActivity.e2);
                videoActivity.V3 = android.support.v4.media.a.p(android.support.v4.media.a.w("<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'/><style>html{background-color:black;}body{margin:0;}iframe{display:block;width:100vw;height:100vh;}</style></head><body><iframe id='ytplayer'type='text/html'src='https://www.youtube.com/embed/", videoActivity.r3, "?autoplay=1&origin="), videoActivity.e2, "'frameborder='0'></iframe></body></html>");
                MySizeFrame mySizeFrame = videoActivity.K1;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.34.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoActivity videoActivity2 = VideoActivity.this;
                        String str = videoActivity2.U3;
                        String str2 = videoActivity2.V3;
                        videoActivity2.U3 = null;
                        videoActivity2.V3 = null;
                        MyWebSafe myWebSafe = videoActivity2.n3;
                        if (myWebSafe == null) {
                            return;
                        }
                        MainUtil.r6(myWebSafe, str, str2);
                    }
                });
            }
        });
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void B() {
        if (this.M1 != null) {
            boolean z = !PrefVideo.p;
            PrefVideo.p = z;
            PrefSet.d(13, this.f1, "mLoop", z);
            this.M1.v();
            if (PrefVideo.p) {
                MainUtil.e8(this.f1, R.string.repeat_on);
            } else {
                MainUtil.e8(this.f1, R.string.repeat_off);
            }
            if (this.n3 != null && !this.B3) {
                this.B3 = true;
                MySizeFrame mySizeFrame = this.K1;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.64
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z2 = PrefVideo.p;
                        VideoActivity videoActivity = VideoActivity.this;
                        if (videoActivity.n3 != null) {
                            if (videoActivity.s3) {
                                MainUtil.J(videoActivity.n3, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.loop=" + z2 + ";}})();", true);
                            } else {
                                MainUtil.J(videoActivity.n3, "(function(){var ele=document.querySelector(\"video\");if(ele){ele.loop=" + z2 + ";}})();", true);
                            }
                        }
                        MySizeFrame mySizeFrame2 = videoActivity.K1;
                        if (mySizeFrame2 == null) {
                            return;
                        }
                        mySizeFrame2.postDelayed(new AnonymousClass29(), 100L);
                    }
                }, 100L);
            }
        }
    }

    public final void B1() {
        J1();
        if (PrefSub.j && !y1()) {
            f1();
            this.z3 = true;
            MainApp.K1 = true;
            DialogConfirm dialogConfirm = new DialogConfirm(this, R.string.subtitle, R.string.sub_guide, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.video.VideoActivity.56
                @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                public final void a(boolean z) {
                    VideoActivity videoActivity = VideoActivity.this;
                    if (z) {
                        PrefSub.j = false;
                        PrefSet.d(10, videoActivity.f1, "mGuideSub", false);
                    }
                    int i = VideoActivity.r4;
                    videoActivity.f1();
                }
            });
            this.b3 = dialogConfirm;
            dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.video.VideoActivity.57
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    int i = VideoActivity.r4;
                    VideoActivity.this.f1();
                }
            });
            this.b3.E = true;
        }
    }

    public final void C1() {
        if (this.n3 != null) {
            return;
        }
        VideoAudio videoAudio = this.l3;
        if (videoAudio != null) {
            videoAudio.c();
        }
        PlayTask playTask = this.v2;
        if (playTask != null) {
            playTask.f12839c = true;
        }
        this.v2 = null;
        MediaPlayer mediaPlayer = this.u2;
        this.T3 = mediaPlayer;
        this.u2 = null;
        if (mediaPlayer == null) {
            this.B2 = false;
        } else {
            m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.27
                @Override // java.lang.Runnable
                public final void run() {
                    MySizeFrame mySizeFrame;
                    VideoActivity videoActivity = VideoActivity.this;
                    boolean z = videoActivity.B2;
                    videoActivity.B2 = false;
                    MediaPlayer mediaPlayer2 = videoActivity.T3;
                    videoActivity.T3 = null;
                    if (mediaPlayer2 != null) {
                        mediaPlayer2.stop();
                        mediaPlayer2.release();
                        if (z && !videoActivity.F1 && (mySizeFrame = videoActivity.K1) != null) {
                            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.27.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    VideoActivity videoActivity2 = VideoActivity.this;
                                    if (videoActivity2.K1 == null) {
                                        return;
                                    }
                                    videoActivity2.R0();
                                }
                            });
                        }
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void D() {
        if (!D1()) {
            return;
        }
        m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.70
            @Override // java.lang.Runnable
            public final void run() {
                VideoActivity videoActivity = VideoActivity.this;
                MediaPlayer mediaPlayer = videoActivity.u2;
                if (mediaPlayer == null) {
                    return;
                }
                try {
                    mediaPlayer.reset();
                } catch (IllegalStateException unused) {
                }
                PlayTask playTask = videoActivity.v2;
                if (playTask != null) {
                    playTask.f12839c = true;
                }
                videoActivity.v2 = null;
                PlayTask playTask2 = new PlayTask(videoActivity);
                videoActivity.v2 = playTask2;
                playTask2.b(videoActivity.f1);
            }
        });
    }

    public final boolean D1() {
        MyAreaView myAreaView;
        VideoAudio videoAudio = this.l3;
        if (videoAudio != null) {
            videoAudio.c();
        }
        if (this.d2 == null) {
            return false;
        }
        if (this.u2 == null) {
            G1(true);
            m1(false);
            return false;
        }
        this.w2 = false;
        this.x2 = false;
        this.z2 = false;
        this.C2 = false;
        this.E2 = -1;
        if (Float.compare(this.g3, 1.0f) != 0) {
            this.y2 = true;
        } else {
            this.y2 = false;
        }
        if (!this.T2 && (myAreaView = this.M1.Q) != null) {
            myAreaView.setSkipDraw(true);
        }
        I1(true);
        G1(false);
        if (this.k2 && f() > 300000) {
            L1(false);
        }
        return true;
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void E(boolean z) {
        if (z) {
            if (!y1()) {
                i1();
                this.z3 = true;
                MainApp.K1 = true;
                DialogSeekBright dialogSeekBright = new DialogSeekBright(this, getWindow(), 1, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.video.VideoActivity.44
                    @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                    public final void a(int i) {
                        WebVideoProgress webVideoProgress = VideoActivity.this.N1;
                        if (webVideoProgress != null) {
                            webVideoProgress.setProgress(i);
                        }
                    }
                });
                this.W2 = dialogSeekBright;
                dialogSeekBright.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.video.VideoActivity.45
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = VideoActivity.r4;
                        VideoActivity.this.i1();
                    }
                });
                this.W2.E = true;
                return;
            }
            return;
        }
        if (y1()) {
            return;
        }
        h1();
        this.z3 = true;
        MainApp.K1 = true;
        DialogSeekAudio dialogSeekAudio = new DialogSeekAudio(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.video.VideoActivity.48
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                WebVideoProgress webVideoProgress = VideoActivity.this.O1;
                if (webVideoProgress != null) {
                    webVideoProgress.setProgress(i);
                }
            }
        });
        this.X2 = dialogSeekAudio;
        dialogSeekAudio.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.video.VideoActivity.49
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = VideoActivity.r4;
                VideoActivity.this.h1();
            }
        });
        this.X2.E = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E1(boolean r11) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.video.VideoActivity.E1(boolean):void");
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.mycompany.app.video.VideoAudio] */
    public final void F1(String str, int i, boolean z) {
        if (this.l3 == null) {
            Context context = this.f1;
            AnonymousClass72 anonymousClass72 = new AnonymousClass72();
            ?? obj = new Object();
            obj.f18443a = context;
            obj.b = anonymousClass72;
            this.l3 = obj;
        }
        this.l3.d(this.J2, i, str, z);
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final boolean G() {
        return this.z2;
    }

    public final void G1(boolean z) {
        VideoControl videoControl = this.M1;
        if (videoControl != null) {
            videoControl.setEnabled(z);
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void H() {
        this.i3 = true;
        Intent i2 = MainUtil.i2(this.f1, PrefSecret.D);
        i2.putExtra("EXTRA_PASS", 3);
        i2.putExtra("EXTRA_TYPE", 3);
        o0(i2, 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c7, code lost:
    
        if (r3 > 0) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d5 A[Catch: Exception -> 0x00e8, TRY_ENTER, TryCatch #0 {Exception -> 0x00e8, blocks: (B:21:0x00d5, B:24:0x00df), top: B:19:0x00d3 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00df A[Catch: Exception -> 0x00e8, TRY_LEAVE, TryCatch #0 {Exception -> 0x00e8, blocks: (B:21:0x00d5, B:24:0x00df), top: B:19:0x00d3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void H1(boolean r11) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.video.VideoActivity.H1(boolean):void");
    }

    public final void I1(boolean z) {
        TextureView textureView = this.L1;
        if (textureView != null && textureView.getKeepScreenOn() != z) {
            this.L1.setKeepScreenOn(z);
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void J() {
        this.i3 = true;
        startActivity(new Intent(this.f1, (Class<?>) SettingVideo.class));
    }

    public final void J1() {
        boolean z;
        if (this.D3 != null) {
            int i = 8;
            boolean z2 = true;
            if (PrefSub.k && a1()) {
                this.D3.setVisibility(0);
                z = true;
            } else {
                this.D3.setVisibility(8);
                z = false;
            }
            VideoSubLayout videoSubLayout = this.D3;
            boolean z3 = PrefSub.t;
            AppCompatTextView appCompatTextView = videoSubLayout.h;
            if (appCompatTextView != null) {
                if (appCompatTextView.getVisibility() != 0) {
                    z2 = false;
                }
                if (z3 != z2) {
                    if (!z2) {
                        CharSequence text = videoSubLayout.j.getText();
                        if (TextUtils.isEmpty(text)) {
                            videoSubLayout.h.setText((CharSequence) null);
                        } else {
                            videoSubLayout.e(text.toString(), false);
                        }
                    }
                    AppCompatTextView appCompatTextView2 = videoSubLayout.h;
                    if (z3) {
                        i = 0;
                    }
                    appCompatTextView2.setVisibility(i);
                }
            }
            this.D3.h(PrefSub.n, PrefSub.o, PrefSub.q);
            this.M3 = -1;
            this.N3.removeMessages(0);
            if (z) {
                this.N3.sendEmptyMessage(0);
            }
        }
    }

    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
    public final void K(RectF rectF) {
        MyAreaView myAreaView;
        final VideoControl videoControl = this.M1;
        if (videoControl != null && (myAreaView = videoControl.Q) != null) {
            myAreaView.f(rectF, videoControl.U, videoControl.f0.getTop());
            int i = 4;
            if (videoControl.p()) {
                videoControl.Q.setVisibility(4);
            } else {
                MyAreaView myAreaView2 = videoControl.Q;
                if (myAreaView2.a()) {
                    i = 0;
                }
                myAreaView2.setVisibility(i);
            }
            MyAreaView myAreaView3 = videoControl.Q;
            if (myAreaView3.A) {
                myAreaView3.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoControl.25
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoControl videoControl2 = VideoControl.this;
                        MyAreaView myAreaView4 = videoControl2.Q;
                        if (myAreaView4 == null) {
                            return;
                        }
                        myAreaView4.e(videoControl2.U, videoControl2.f0.getTop());
                        int i2 = 0;
                        videoControl2.Q.setSkipDraw(false);
                        if (videoControl2.p()) {
                            videoControl2.Q.setVisibility(4);
                            return;
                        }
                        MyAreaView myAreaView5 = videoControl2.Q;
                        if (!myAreaView5.b()) {
                            i2 = 4;
                        }
                        myAreaView5.setVisibility(i2);
                    }
                }, 100L);
            }
        }
    }

    public final void K1() {
        String str;
        if (!y1()) {
            d1();
            if (!TextUtils.isEmpty(this.e2)) {
                if (!TextUtils.isEmpty(PrefAlbum.H) && !TextUtils.isEmpty(PrefAlbum.I)) {
                    boolean G4 = MainUtil.G4(this, PrefAlbum.H, PrefAlbum.I, this.e2, this.o2, this.r2, "video/*");
                    this.i3 = G4;
                    if (G4) {
                        L1(true);
                        return;
                    }
                    return;
                }
                this.z3 = true;
                MainApp.K1 = true;
                if (!TextUtils.isEmpty(this.n2)) {
                    str = this.n2;
                } else {
                    str = this.e2;
                }
                DialogDownUrl dialogDownUrl = new DialogDownUrl(this, str, this.o2, this.r2, null, "video/*", 0L, 5, 0, null, 0, null, false, 0, new DialogDownUrl.DownUrlListener() { // from class: com.mycompany.app.video.VideoActivity.52
                    @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                    public final WebNestView a() {
                        return null;
                    }

                    @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                    public final void b(String str2, String str3) {
                        int i = VideoActivity.r4;
                        VideoActivity videoActivity = VideoActivity.this;
                        videoActivity.d1();
                        videoActivity.i3 = MainUtil.a8(videoActivity, str2, str3);
                        if (videoActivity.i3) {
                            videoActivity.L1(true);
                        }
                    }

                    @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                    public final void c(String str2, String str3, String str4) {
                        int i = VideoActivity.r4;
                        final VideoActivity videoActivity = VideoActivity.this;
                        videoActivity.d1();
                        if (videoActivity.y1()) {
                            return;
                        }
                        videoActivity.k1();
                        videoActivity.z3 = true;
                        MainApp.K1 = true;
                        videoActivity.f4 = str2;
                        videoActivity.g4 = str3;
                        videoActivity.h4 = str4;
                        DialogSetDown dialogSetDown = new DialogSetDown(videoActivity, str2, str4, videoActivity.h0(), false, false, 0, new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.video.VideoActivity.54
                            @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
                            public final void a(String str5, String str6, String str7) {
                                VideoActivity videoActivity2 = VideoActivity.this;
                                String str8 = videoActivity2.f4;
                                String str9 = videoActivity2.g4;
                                String str10 = videoActivity2.h4;
                                videoActivity2.f4 = null;
                                videoActivity2.g4 = null;
                                videoActivity2.h4 = null;
                                videoActivity2.i3 = MainUtil.G4(videoActivity2, str6, str7, str8, videoActivity2.o2, str9, str10);
                                VideoActivity videoActivity3 = VideoActivity.this;
                                if (videoActivity3.i3) {
                                    videoActivity3.L1(true);
                                }
                            }
                        });
                        videoActivity.a3 = dialogSetDown;
                        dialogSetDown.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.video.VideoActivity.55
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                int i2 = VideoActivity.r4;
                                VideoActivity.this.k1();
                            }
                        });
                        videoActivity.a3.E = true;
                    }

                    @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                    public final void d(String str2, MainUri.UriItem uriItem, int i, boolean z, String str3, String str4) {
                        int i2 = VideoActivity.r4;
                        VideoActivity videoActivity = VideoActivity.this;
                        videoActivity.d1();
                        if (uriItem == null) {
                            return;
                        }
                        MainApp p = MainApp.p(videoActivity.getApplicationContext());
                        if (p == null) {
                            MainUtil.e8(videoActivity, R.string.down_fail);
                        } else {
                            p.R(str2, str4, uriItem, z);
                        }
                    }

                    @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                    public final void f(String str2, String str3, String str4, boolean z) {
                        int i = VideoActivity.r4;
                        VideoActivity.this.d1();
                    }

                    @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                    public final void g(String str2, String str3, String str4) {
                    }

                    @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                    public final void e(int i, String str2) {
                    }
                });
                this.Z2 = dialogDownUrl;
                dialogDownUrl.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.video.VideoActivity.53
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = VideoActivity.r4;
                        VideoActivity.this.d1();
                    }
                });
                this.Z2.E = true;
            }
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void L() {
        r1();
    }

    public final void L1(boolean z) {
        MyCoverView myCoverView = this.Q1;
        if (myCoverView == null) {
            return;
        }
        if (z) {
            myCoverView.setBlockTouch(true);
            this.Q1.l();
            this.Q1.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.59
                @Override // java.lang.Runnable
                public final void run() {
                    int i = VideoActivity.r4;
                    VideoActivity.this.m1(true);
                }
            }, 1500L);
        } else {
            this.j3 = System.currentTimeMillis();
            this.Q1.setBlockTouch(false);
            this.Q1.m(true);
            this.Q1.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.60
                @Override // java.lang.Runnable
                public final void run() {
                    VideoActivity videoActivity = VideoActivity.this;
                    if (videoActivity.f1 != null && videoActivity.j3 != 0 && System.currentTimeMillis() - videoActivity.j3 >= 5000) {
                        videoActivity.j3 = 0L;
                        MainUtil.e8(videoActivity, R.string.server_delay);
                    }
                }
            }, 5000L);
        }
    }

    public final void M1(boolean z) {
        MediaPlayer mediaPlayer = this.u2;
        if (mediaPlayer != null && this.w2) {
            if (this.b2 != null || !this.F1) {
                if (z) {
                    if (!this.C2) {
                        this.E2 = -1;
                        this.h3 = true;
                        Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_MUSIC_PAUSE");
                        intent.setPackage(getPackageName());
                        sendBroadcast(intent);
                        if (!this.u2.isPlaying()) {
                            this.u2.start();
                            I1(true);
                            VideoSubLayout videoSubLayout = this.D3;
                            if (videoSubLayout != null && videoSubLayout.getVisibility() != 8) {
                                this.N3.removeMessages(0);
                                this.N3.sendEmptyMessage(0);
                            }
                        }
                    }
                    VideoAudio videoAudio = this.l3;
                    if (videoAudio != null) {
                        videoAudio.b(e());
                    }
                } else {
                    if (mediaPlayer.isPlaying()) {
                        this.u2.pause();
                        I1(false);
                    }
                    EventHandler eventHandler = this.N3;
                    if (eventHandler != null) {
                        eventHandler.removeMessages(0);
                    }
                    VideoAudio videoAudio2 = this.l3;
                    if (videoAudio2 != null) {
                        videoAudio2.a(false);
                    }
                }
                P1();
            }
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final String N() {
        if (this.M1 == null) {
            return null;
        }
        return this.r2;
    }

    public final void N1() {
        if (this.z2) {
            D();
        } else if (g()) {
            c();
        } else {
            j();
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void O() {
        if (!this.B3) {
            this.B3 = true;
            MySizeFrame mySizeFrame = this.K1;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.67
                @Override // java.lang.Runnable
                public final void run() {
                    int i = VideoActivity.r4;
                    VideoActivity videoActivity = VideoActivity.this;
                    videoActivity.S0(true);
                    MySizeFrame mySizeFrame2 = videoActivity.K1;
                    if (mySizeFrame2 == null) {
                        return;
                    }
                    mySizeFrame2.postDelayed(new AnonymousClass29(), 100L);
                }
            });
        }
    }

    public final void O1() {
        VideoControl videoControl = this.M1;
        if (videoControl != null && videoControl.f()) {
            videoControl.C(true);
        }
    }

    public final void P1() {
        VideoControl videoControl = this.M1;
        if (videoControl != null) {
            videoControl.E(true);
        }
        if (this.b2 != null) {
            H1(false);
        }
    }

    public final boolean Q0() {
        if (this.u2 == null || this.z2) {
            return false;
        }
        return this.w2;
    }

    public final void R0() {
        boolean z;
        MyAreaView myAreaView;
        if (!this.s3 && !this.p3 && this.n3 == null && this.d2 != null && this.u2 == null && this.t2 != null) {
            this.w2 = false;
            this.x2 = false;
            this.z2 = false;
            this.C2 = false;
            this.E2 = -1;
            this.S2 = false;
            if (Float.compare(this.g3, 1.0f) != 0) {
                this.y2 = true;
            } else {
                this.y2 = false;
            }
            if (!MainUtil.q5(this.e2, this.J2)) {
                this.T2 = false;
                this.A2 = !TextUtils.isEmpty(this.J2);
                s1();
                VideoAudio videoAudio = this.l3;
                if (videoAudio != null) {
                    videoAudio.g = null;
                    videoAudio.h = 0;
                }
                z = true;
            } else {
                z = false;
            }
            this.J2 = this.e2;
            if (!this.T2 && (myAreaView = this.M1.Q) != null) {
                myAreaView.setSkipDraw(true);
            }
            I1(true);
            G1(false);
            if (this.k2) {
                this.m2 = true;
                MyCoverView myCoverView = this.Q1;
                if (myCoverView != null) {
                    myCoverView.setBackgroundColor(-16777216);
                }
                L1(false);
            }
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.u2 = mediaPlayer;
            mediaPlayer.setSurface(this.t2);
            this.u2.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.mycompany.app.video.VideoActivity.19
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer2) {
                    VideoActivity videoActivity = VideoActivity.this;
                    MediaPlayer mediaPlayer3 = videoActivity.u2;
                    if (mediaPlayer3 != null) {
                        videoActivity.w2 = true;
                        videoActivity.x2 = true;
                        int duration = mediaPlayer3.getDuration();
                        if (duration < 0) {
                            duration = 0;
                        }
                        videoActivity.D2 = duration;
                        if (videoActivity.y2) {
                            videoActivity.m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.19.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    VideoActivity videoActivity2 = VideoActivity.this;
                                    float f = videoActivity2.g3;
                                    MediaPlayer mediaPlayer4 = videoActivity2.u2;
                                    if (mediaPlayer4 != null) {
                                        if (!videoActivity2.w2) {
                                            videoActivity2.y2 = true;
                                        } else {
                                            videoActivity2.y2 = false;
                                            try {
                                                mediaPlayer4.setPlaybackParams(mediaPlayer4.getPlaybackParams().setSpeed(f));
                                            } catch (Exception unused) {
                                            }
                                        }
                                    }
                                    MySizeFrame mySizeFrame = videoActivity2.K1;
                                    if (mySizeFrame != null) {
                                        mySizeFrame.post(new AnonymousClass25());
                                    }
                                }
                            });
                            return;
                        }
                        MySizeFrame mySizeFrame = videoActivity.K1;
                        if (mySizeFrame == null) {
                            return;
                        }
                        mySizeFrame.post(new AnonymousClass25());
                    }
                }
            });
            this.u2.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.mycompany.app.video.VideoActivity.20
                @Override // android.media.MediaPlayer.OnSeekCompleteListener
                public final void onSeekComplete(MediaPlayer mediaPlayer2) {
                    VideoActivity videoActivity = VideoActivity.this;
                    videoActivity.x2 = true;
                    if (videoActivity.C2 && videoActivity.E2 != -1) {
                        videoActivity.m1(false);
                    }
                    videoActivity.E2 = -1;
                    videoActivity.M1(true);
                    VideoActivity.E0(videoActivity, HttpStatusCodes.STATUS_CODE_BAD_REQUEST);
                }
            });
            this.u2.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.mycompany.app.video.VideoActivity.21
                @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
                public final void onVideoSizeChanged(MediaPlayer mediaPlayer2, int i, int i2) {
                    int i3 = VideoActivity.r4;
                    VideoActivity.this.E1(true);
                }
            });
            this.u2.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.mycompany.app.video.VideoActivity.22
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer2) {
                    MySizeFrame mySizeFrame;
                    int i = VideoActivity.r4;
                    VideoActivity videoActivity = VideoActivity.this;
                    if (!videoActivity.D1()) {
                        if (PrefVideo.p || (mySizeFrame = videoActivity.K1) == null) {
                            return;
                        }
                        mySizeFrame.post(new AnonymousClass26());
                        return;
                    }
                    videoActivity.m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.22.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MySizeFrame mySizeFrame2;
                            VideoActivity videoActivity2 = VideoActivity.this;
                            MediaPlayer mediaPlayer3 = videoActivity2.u2;
                            if (mediaPlayer3 != null) {
                                try {
                                    mediaPlayer3.reset();
                                } catch (IllegalStateException unused) {
                                }
                                PlayTask playTask = videoActivity2.v2;
                                if (playTask != null) {
                                    playTask.f12839c = true;
                                }
                                videoActivity2.v2 = null;
                                PlayTask playTask2 = new PlayTask(videoActivity2);
                                videoActivity2.v2 = playTask2;
                                playTask2.b(videoActivity2.f1);
                            }
                            if (!PrefVideo.p && (mySizeFrame2 = videoActivity2.K1) != null) {
                                mySizeFrame2.post(new AnonymousClass26());
                            }
                        }
                    });
                }
            });
            this.u2.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.mycompany.app.video.VideoActivity.23
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
                    final VideoActivity videoActivity = VideoActivity.this;
                    if (videoActivity.A2 && i == 100) {
                        videoActivity.B2 = true;
                        videoActivity.C1();
                    } else if (videoActivity.k2) {
                        if (!videoActivity.l2) {
                            videoActivity.l2 = true;
                            videoActivity.B2 = true;
                            videoActivity.C1();
                        } else {
                            videoActivity.u1();
                        }
                    } else if (i != 100 && i != 1) {
                        VideoActivity.J0(videoActivity);
                    } else {
                        videoActivity.m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.24
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoActivity videoActivity2 = VideoActivity.this;
                                videoActivity2.S3 = MainUtil.g1(videoActivity2.f1, videoActivity2.e2);
                                MySizeFrame mySizeFrame = videoActivity2.K1;
                                if (mySizeFrame == null) {
                                    return;
                                }
                                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.24.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        VideoActivity videoActivity3 = VideoActivity.this;
                                        if (videoActivity3.K1 == null) {
                                            return;
                                        }
                                        long j = videoActivity3.S3;
                                        if (j != 0 && j <= 8388608) {
                                            videoActivity3.u1();
                                        } else {
                                            VideoActivity.J0(videoActivity3);
                                        }
                                    }
                                });
                            }
                        });
                    }
                    videoActivity.A2 = false;
                    return true;
                }
            });
            PlayTask playTask = this.v2;
            if (playTask != null) {
                playTask.f12839c = true;
            }
            this.v2 = null;
            PlayTask playTask2 = new PlayTask(this);
            this.v2 = playTask2;
            playTask2.b(this.f1);
            if (z) {
                m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.77
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:11:0x007b  */
                    /* JADX WARN: Type inference failed for: r2v4 */
                    /* JADX WARN: Type inference failed for: r2v7, types: [com.mycompany.app.db.book.DbBookSub$DbSubItem, java.lang.Object] */
                    /* JADX WARN: Type inference failed for: r2v8 */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            r15 = this;
                            com.mycompany.app.video.VideoActivity r0 = com.mycompany.app.video.VideoActivity.this
                            android.content.Context r1 = r0.f1
                            java.lang.String r2 = r0.J2
                            com.mycompany.app.db.book.DbBookSub r3 = com.mycompany.app.db.book.DbBookSub.f12951c
                            r3 = 0
                            if (r1 == 0) goto L7f
                            boolean r4 = android.text.TextUtils.isEmpty(r2)
                            if (r4 == 0) goto L12
                            goto L7f
                        L12:
                            java.lang.String r4 = "_sub"
                            java.lang.String r5 = "_sync"
                            java.lang.String r6 = "_lang"
                            java.lang.String r7 = "_rsv1"
                            java.lang.String r8 = "_rsv4"
                            java.lang.String[] r11 = new java.lang.String[]{r4, r5, r6, r7, r8}
                            java.lang.String[] r13 = new java.lang.String[]{r2}
                            com.mycompany.app.db.book.DbBookSub r1 = com.mycompany.app.db.book.DbBookSub.b(r1)     // Catch: java.lang.Exception -> L77
                            android.database.sqlite.SQLiteDatabase r9 = r1.getWritableDatabase()     // Catch: java.lang.Exception -> L77
                            java.lang.String r10 = "DbBookSub_table"
                            java.lang.String r12 = "_path=?"
                            r14 = 0
                            android.database.Cursor r1 = com.mycompany.app.db.DbUtil.g(r9, r10, r11, r12, r13, r14)     // Catch: java.lang.Exception -> L77
                            if (r1 == 0) goto L75
                            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Exception -> L75
                            if (r2 == 0) goto L75
                            com.mycompany.app.db.book.DbBookSub$DbSubItem r2 = new com.mycompany.app.db.book.DbBookSub$DbSubItem     // Catch: java.lang.Exception -> L75
                            r2.<init>()     // Catch: java.lang.Exception -> L75
                            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Exception -> L79
                            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L79
                            r2.f12954a = r4     // Catch: java.lang.Exception -> L79
                            int r4 = r1.getColumnIndex(r5)     // Catch: java.lang.Exception -> L79
                            int r4 = r1.getInt(r4)     // Catch: java.lang.Exception -> L79
                            r2.b = r4     // Catch: java.lang.Exception -> L79
                            int r4 = r1.getColumnIndex(r6)     // Catch: java.lang.Exception -> L79
                            int r4 = r1.getInt(r4)     // Catch: java.lang.Exception -> L79
                            r2.f12955c = r4     // Catch: java.lang.Exception -> L79
                            int r4 = r1.getColumnIndex(r7)     // Catch: java.lang.Exception -> L79
                            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L79
                            r2.d = r4     // Catch: java.lang.Exception -> L79
                            int r4 = r1.getColumnIndex(r8)     // Catch: java.lang.Exception -> L79
                            int r4 = r1.getInt(r4)     // Catch: java.lang.Exception -> L79
                            r2.e = r4     // Catch: java.lang.Exception -> L79
                            goto L79
                        L75:
                            r2 = r3
                            goto L79
                        L77:
                            r1 = r3
                            r2 = r1
                        L79:
                            if (r1 == 0) goto L80
                            r1.close()
                            goto L80
                        L7f:
                            r2 = r3
                        L80:
                            if (r2 != 0) goto L83
                            goto Lc6
                        L83:
                            java.lang.String r1 = r2.f12954a
                            boolean r1 = android.text.TextUtils.isEmpty(r1)
                            r4 = 0
                            if (r1 != 0) goto Lad
                            java.lang.String r1 = r2.f12954a
                            r0.G3 = r1
                            int r1 = r2.b
                            r0.H3 = r1
                            int r1 = r2.f12955c
                            r0.I3 = r1
                            com.mycompany.app.video.VideoActivity$SubTask r1 = r0.J3
                            if (r1 == 0) goto L9f
                            r5 = 1
                            r1.f12839c = r5
                        L9f:
                            r0.J3 = r3
                            com.mycompany.app.video.VideoActivity$SubTask r1 = new com.mycompany.app.video.VideoActivity$SubTask
                            r1.<init>(r0, r4)
                            r0.J3 = r1
                            android.content.Context r3 = r0.f1
                            r1.b(r3)
                        Lad:
                            java.lang.String r1 = r2.d
                            boolean r1 = android.text.TextUtils.isEmpty(r1)
                            if (r1 == 0) goto Lb6
                            goto Lc6
                        Lb6:
                            java.lang.String r1 = r2.d
                            int r2 = r2.e
                            r0.F1(r1, r2, r4)
                            boolean r1 = com.mycompany.app.pref.PrefVideo.z
                            if (r1 != 0) goto Lc2
                            goto Lc6
                        Lc2:
                            com.mycompany.app.view.MySizeFrame r0 = r0.K1
                            if (r0 != 0) goto Lc7
                        Lc6:
                            return
                        Lc7:
                            com.mycompany.app.video.VideoActivity$77$1 r1 = new com.mycompany.app.video.VideoActivity$77$1
                            r1.<init>()
                            r0.post(r1)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.video.VideoActivity.AnonymousClass77.run():void");
                    }
                });
            }
        }
    }

    public final void S0(boolean z) {
        Context context;
        if ((z || PrefVideo.m || this.s3) && !this.i3 && !this.G1 && this.V2 == null && (context = this.f1) != null) {
            if (Build.VERSION.SDK_INT < 26) {
                if (z) {
                    MainUtil.e8(this, R.string.pip_info);
                    return;
                }
                return;
            }
            if (MainUtil.T5(context, 6)) {
                if (z) {
                    MainUtil.N4(this, 6);
                    return;
                }
                return;
            }
            VideoControl videoControl = this.M1;
            boolean z2 = false;
            if (videoControl != null) {
                videoControl.o(false);
            }
            c1();
            this.i1 = true;
            Context context2 = this.f1;
            String str = this.e2;
            MainApp p = MainApp.p(context2);
            if (p != null) {
                p.i = str;
            }
            if (this.c2 == null) {
                this.c2 = new EventReceiver();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_VIDEO_FRWD");
                intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_VIDEO_PLAY");
                intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_VIDEO_FFWD");
                intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_MUSIC_PAUSE");
                ContextCompat.f(this, this.c2, intentFilter, null, 4);
            }
            if (this.b2 == null) {
                z2 = true;
            }
            H1(z2);
            Handler handler = this.O0;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.79
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoActivity videoActivity = VideoActivity.this;
                        if (videoActivity.O0 != null && videoActivity.i1) {
                            MainUtil.g7(videoActivity.getWindow(), PrefPdf.o, PrefPdf.n);
                            MainUtil.w7(videoActivity);
                            if (videoActivity.s3 && videoActivity.v3 == 3) {
                                videoActivity.O0.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.79.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        boolean z3;
                                        int i;
                                        MyWebSafe myWebSafe;
                                        VideoActivity videoActivity2 = VideoActivity.this;
                                        if (videoActivity2.i1 && (z3 = videoActivity2.s3) && (i = videoActivity2.v3) == 3 && z3 && i != 0 && i != 2 && (myWebSafe = videoActivity2.n3) != null) {
                                            MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.play();}})();", true);
                                        }
                                    }
                                });
                            }
                        }
                    }
                });
            }
        }
    }

    public final void T0() {
        this.i1 = this.i2;
        this.b2 = null;
        MainApp p = MainApp.p(this.f1);
        if (p != null) {
            p.i = null;
        }
        EventReceiver eventReceiver = this.c2;
        if (eventReceiver == null) {
            return;
        }
        unregisterReceiver(eventReceiver);
        this.c2 = null;
    }

    public final void U0(Intent intent) {
        boolean z;
        if (intent != null) {
            boolean z2 = false;
            this.G2 = 0;
            this.I2 = false;
            if (this.s3 && MainUtil.m8()) {
                this.g3 = PrefZtwo.W;
            } else {
                this.g3 = 1.0f;
            }
            boolean booleanExtra = intent.getBooleanExtra("EXTRA_POPUP", false);
            this.k2 = booleanExtra;
            if (booleanExtra) {
                this.n2 = intent.getStringExtra("EXTRA_ORG");
                this.o2 = intent.getStringExtra("EXTRA_URL");
                this.p2 = intent.getStringExtra("EXTRA_HOST");
                this.q2 = intent.getStringExtra("EXTRA_THUMB");
                this.G2 = intent.getIntExtra("EXTRA_INDEX", 0);
                this.r2 = MainUtil.V3(this.e2, null, "video/*", true);
                if (!TextUtils.isEmpty(this.p2) && !this.p2.contains("youtube")) {
                    z = true;
                } else {
                    z = false;
                }
                this.k3 = z;
            } else {
                boolean isNetworkUrl = URLUtil.isNetworkUrl(this.e2);
                this.k2 = isNetworkUrl;
                if (isNetworkUrl) {
                    this.r2 = MainUtil.V3(this.e2, null, "video/*", true);
                    this.k3 = !MainUtil.m6(this.e2);
                } else {
                    this.k3 = false;
                }
            }
            if (this.G2 == 0) {
                z2 = true;
            }
            this.H2 = z2;
            VideoControl videoControl = this.M1;
            if (videoControl != null) {
                videoControl.setIconDown(this.k3);
            }
        }
    }

    public final int V0(int i, long j) {
        try {
            List X0 = X0();
            if (X0 != null && !X0.isEmpty()) {
                long j2 = j + this.H3;
                int size = X0.size();
                if (((SubtitleItem) X0.get(size - 1)).f18308a < j2) {
                    return -1;
                }
                if (i >= 0 && i < size) {
                    int i2 = i + 5;
                    while (i < i2 && i < size) {
                        int i3 = i + 1;
                        if (i3 < size) {
                            if (((SubtitleItem) X0.get(i)).f18308a <= j2 && j2 < ((SubtitleItem) X0.get(i3)).f18308a) {
                                return i;
                            }
                            i = i3;
                        } else {
                            if (((SubtitleItem) X0.get(i)).f18308a <= j2) {
                                return i;
                            }
                            i = i3;
                        }
                    }
                }
                int i4 = 0;
                int i5 = size;
                while (i4 <= i5) {
                    int i6 = (i4 + i5) / 2;
                    if (i6 >= size) {
                        return -1;
                    }
                    int i7 = i6 + 1;
                    if (i7 < size) {
                        if (((SubtitleItem) X0.get(i6)).f18308a > j2 || j2 >= ((SubtitleItem) X0.get(i7)).f18308a) {
                            if (((SubtitleItem) X0.get(i7)).f18308a < j2) {
                                i4 = i7;
                            } else {
                                i5 = i6 - 1;
                            }
                        } else {
                            return i6;
                        }
                    } else {
                        if (((SubtitleItem) X0.get(i6)).f18308a <= j2) {
                            return i6;
                        }
                        i5 = i6 - 1;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return -1;
    }

    public final SubtitleItem W0(int i) {
        try {
            List X0 = X0();
            if (X0 != null && !X0.isEmpty() && i >= 0 && i < X0.size()) {
                return (SubtitleItem) X0.get(i);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final List X0() {
        try {
            ArrayList arrayList = this.K3;
            if (arrayList != null && !arrayList.isEmpty()) {
                int i = this.I3;
                if (i >= 0 && i < arrayList.size()) {
                    return (List) arrayList.get(this.I3);
                }
                return (List) arrayList.get(0);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final boolean a() {
        if (this.M1 != null) {
            if (!this.F1 && this.Y1 == 0) {
                ZoomVideoAttacher zoomVideoAttacher = this.T1;
                if (zoomVideoAttacher != null && zoomVideoAttacher.n) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public final boolean a1() {
        try {
            List X0 = X0();
            if (X0 == null) {
                return false;
            }
            if (X0.isEmpty()) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void b(boolean z) {
        if (!this.i1 && this.K1 != null) {
            VideoControl videoControl = this.M1;
            if (videoControl != null && videoControl.s(null)) {
                r0();
                return;
            }
            DialogCapture dialogCapture = this.V2;
            if (dialogCapture != null) {
                dialogCapture.r();
                return;
            }
            if (z) {
                if (w1()) {
                    r0();
                }
            } else if (!y1()) {
                r0();
            }
        }
    }

    public final void b1() {
        MyPopupMenu myPopupMenu = this.m3;
        if (myPopupMenu != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.m3 = null;
        }
        VideoControl videoControl = this.M1;
        if (videoControl != null) {
            videoControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void c() {
        int i;
        MyWebSafe myWebSafe;
        boolean z = this.s3;
        if (z) {
            if (z && (i = this.v3) != 0 && i != 3 && (myWebSafe = this.n3) != null) {
                MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.pause();}})();", true);
                return;
            }
            return;
        }
        this.C2 = true;
        M1(false);
        m1(false);
    }

    public final void c1() {
        DialogCapture dialogCapture = this.V2;
        if (dialogCapture != null) {
            dialogCapture.dismiss();
            this.V2 = null;
        }
        i1();
        h1();
        e1();
        d1();
        k1();
        f1();
        g1();
        j1();
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public void controlAudio(View view) {
        boolean z;
        int i;
        if (this.M1 != null && this.m3 == null) {
            b1();
            if (view == null) {
                return;
            }
            VideoControl videoControl = this.M1;
            if (videoControl != null) {
                videoControl.setAutoHide(false);
            }
            VideoAudio videoAudio = this.l3;
            if (videoAudio != null && !TextUtils.isEmpty(videoAudio.g)) {
                z = true;
            } else {
                z = false;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.audio_file));
            if (PrefSub.x) {
                i = R.string.audio_off;
            } else {
                i = R.string.audio_on;
            }
            boolean z2 = !z;
            arrayList.add(new MyPopupAdapter.PopMenuItem(1, i, z2, (Object) null));
            arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.audio_sync, z2, (Object) null));
            MyPopupMenu myPopupMenu = new MyPopupMenu(this, this.K1, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.video.VideoActivity.71
                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                public final void a() {
                    int i2 = VideoActivity.r4;
                    VideoActivity.this.b1();
                }

                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                public final boolean b(View view2, int i2) {
                    VideoActivity videoActivity = VideoActivity.this;
                    if (i2 == 0) {
                        videoActivity.i3 = true;
                        try {
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType("audio/*");
                            intent.addFlags(65);
                            videoActivity.o0(intent, 17);
                            VideoControl videoControl2 = videoActivity.M1;
                            if (videoControl2 != null) {
                                videoControl2.o(true);
                            }
                        } catch (Exception unused) {
                        }
                    } else if (i2 == 1) {
                        boolean z3 = !PrefSub.x;
                        PrefSub.x = z3;
                        PrefSet.d(10, videoActivity.f1, "mUseAudio", z3);
                        VideoAudio videoAudio2 = videoActivity.l3;
                        if (videoAudio2 != null) {
                            videoAudio2.b(videoActivity.e());
                            return true;
                        }
                    } else if (i2 == 2) {
                        VideoActivity.P0(videoActivity, true);
                    }
                    return true;
                }
            });
            this.m3 = myPopupMenu;
            this.Z0 = myPopupMenu;
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public void controlRate(View view) {
        if (this.M1 != null) {
            if (!this.s3 && this.n3 != null) {
                MainUtil.e8(this, R.string.not_support_video);
                return;
            }
            if (!this.B3) {
                this.i4 = view;
                MySizeFrame mySizeFrame = this.K1;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.65
                    @Override // java.lang.Runnable
                    public final void run() {
                        final VideoActivity videoActivity = VideoActivity.this;
                        View view2 = videoActivity.i4;
                        videoActivity.i4 = null;
                        if (videoActivity.f3 == null) {
                            videoActivity.n1();
                            if (view2 == null) {
                                return;
                            }
                            VideoControl videoControl = videoActivity.M1;
                            if (videoControl != null) {
                                videoControl.setAutoHide(false);
                            }
                            ArrayList arrayList = new ArrayList();
                            int i = 0;
                            while (true) {
                                float[] fArr = WebVideoFull.o1;
                                if (i < 8) {
                                    float f = fArr[i];
                                    boolean z = true;
                                    if (i == 3) {
                                        int i2 = R.string.normal_rate;
                                        if (Float.compare(f, videoActivity.g3) != 0) {
                                            z = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i, i2, z));
                                    } else {
                                        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + f;
                                        if (Float.compare(f, videoActivity.g3) != 0) {
                                            z = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(str, i, z));
                                    }
                                    i++;
                                } else {
                                    MyPopupMenu myPopupMenu = new MyPopupMenu(videoActivity, videoActivity.K1, view2, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.video.VideoActivity.66
                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final void a() {
                                            int i3 = VideoActivity.r4;
                                            VideoActivity.this.n1();
                                        }

                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final boolean b(View view3, int i3) {
                                            float f2 = WebVideoFull.o1[i3 % 8];
                                            VideoActivity videoActivity2 = VideoActivity.this;
                                            if (Float.compare(videoActivity2.g3, f2) != 0) {
                                                videoActivity2.g3 = f2;
                                                if (videoActivity2.s3) {
                                                    if (!videoActivity2.B3) {
                                                        videoActivity2.B3 = true;
                                                        MySizeFrame mySizeFrame2 = videoActivity2.K1;
                                                        if (mySizeFrame2 != null) {
                                                            mySizeFrame2.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.66.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    VideoActivity videoActivity3 = VideoActivity.this;
                                                                    if (MainUtil.m8() && Float.compare(PrefZtwo.W, videoActivity3.g3) != 0) {
                                                                        float f3 = videoActivity3.g3;
                                                                        PrefZtwo.W = f3;
                                                                        PrefSet.e(videoActivity3.f1, f3);
                                                                    }
                                                                    float f4 = videoActivity3.g3;
                                                                    if (videoActivity3.s3 && videoActivity3.v3 != 0 && videoActivity3.n3 != null) {
                                                                        MainUtil.J(videoActivity3.n3, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.playbackRate=" + f4 + ";}})();", true);
                                                                    }
                                                                    MySizeFrame mySizeFrame3 = videoActivity3.K1;
                                                                    if (mySizeFrame3 == null) {
                                                                        return;
                                                                    }
                                                                    mySizeFrame3.postDelayed(new AnonymousClass29(), 100L);
                                                                }
                                                            }, 500L);
                                                            return true;
                                                        }
                                                    }
                                                } else {
                                                    videoActivity2.m0(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.66.2
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            VideoActivity videoActivity3 = VideoActivity.this;
                                                            float f3 = videoActivity3.g3;
                                                            MediaPlayer mediaPlayer = videoActivity3.u2;
                                                            if (mediaPlayer != null) {
                                                                if (!videoActivity3.w2) {
                                                                    videoActivity3.y2 = true;
                                                                    return;
                                                                }
                                                                videoActivity3.y2 = false;
                                                                try {
                                                                    mediaPlayer.setPlaybackParams(mediaPlayer.getPlaybackParams().setSpeed(f3));
                                                                } catch (Exception unused) {
                                                                }
                                                            }
                                                        }
                                                    });
                                                    return true;
                                                }
                                            }
                                            return true;
                                        }
                                    });
                                    videoActivity.f3 = myPopupMenu;
                                    videoActivity.Z0 = myPopupMenu;
                                    return;
                                }
                            }
                        }
                    }
                });
            }
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public void controlRotate(View view) {
        boolean z;
        boolean z2;
        if (this.M1 != null && this.d3 == null) {
            o1();
            if (view == null) {
                return;
            }
            VideoControl videoControl = this.M1;
            boolean z3 = false;
            if (videoControl != null) {
                videoControl.setAutoHide(false);
            }
            ArrayList arrayList = new ArrayList();
            int i = R.string.rotation;
            if (PrefVideo.o == 0) {
                z = true;
            } else {
                z = false;
            }
            arrayList.add(new MyPopupAdapter.PopMenuItem(0, i, z));
            int i2 = R.string.view_port;
            if (PrefVideo.o == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            arrayList.add(new MyPopupAdapter.PopMenuItem(1, i2, z2));
            int i3 = R.string.view_land;
            if (PrefVideo.o == 2) {
                z3 = true;
            }
            arrayList.add(new MyPopupAdapter.PopMenuItem(2, i3, z3));
            MyPopupMenu myPopupMenu = new MyPopupMenu(this, this.K1, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.video.VideoActivity.62
                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                public final void a() {
                    int i4 = VideoActivity.r4;
                    VideoActivity.this.o1();
                }

                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                public final boolean b(View view2, int i4) {
                    if (PrefVideo.o != i4) {
                        PrefVideo.o = i4;
                        VideoActivity videoActivity = VideoActivity.this;
                        PrefSet.f(videoActivity.f1, 13, i4, "mRotate");
                        MainUtil.S7(videoActivity);
                        VideoControl videoControl2 = videoActivity.M1;
                        if (videoControl2 != null) {
                            videoControl2.x();
                        }
                    }
                    return true;
                }
            });
            this.d3 = myPopupMenu;
            this.Z0 = myPopupMenu;
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public void controlSize(View view) {
        boolean z;
        if (this.M1 != null) {
            if (this.n3 != null) {
                MainUtil.e8(this, R.string.not_support_video);
                return;
            }
            if (this.e3 == null) {
                p1();
                if (view == null) {
                    return;
                }
                VideoControl videoControl = this.M1;
                if (videoControl != null) {
                    videoControl.setAutoHide(false);
                }
                ArrayList arrayList = new ArrayList();
                int length = MainConst.P.length;
                for (int i = 0; i < length; i++) {
                    int i2 = MainConst.P[i];
                    if (i == PrefVideo.w) {
                        z = true;
                    } else {
                        z = false;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(i, i2, z));
                }
                MyPopupMenu myPopupMenu = new MyPopupMenu(this, this.K1, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.video.VideoActivity.63
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int i3 = VideoActivity.r4;
                        VideoActivity.this.p1();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i3) {
                        int length2 = i3 % MainConst.P.length;
                        if (PrefVideo.w == length2) {
                            return true;
                        }
                        PrefVideo.w = length2;
                        VideoActivity videoActivity = VideoActivity.this;
                        PrefSet.f(videoActivity.f1, 13, length2, "mRatio2");
                        videoActivity.T2 = false;
                        videoActivity.E1(true);
                        return true;
                    }
                });
                this.e3 = myPopupMenu;
                this.Z0 = myPopupMenu;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0064  */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, com.mycompany.app.view.MyPopupAdapter$PopMenuItem] */
    @Override // com.mycompany.app.video.VideoControl.ControlListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void controlSubIcon(android.view.View r13) {
        /*
            r12 = this;
            com.mycompany.app.video.VideoControl r0 = r12.M1
            if (r0 != 0) goto L5
            goto Lf
        L5:
            com.mycompany.app.view.MyPopupMenu r0 = r12.O3
            if (r0 == 0) goto La
            goto Lf
        La:
            r12.q1()
            if (r13 != 0) goto L10
        Lf:
            return
        L10:
            com.mycompany.app.video.VideoControl r0 = r12.M1
            r1 = 0
            if (r0 == 0) goto L18
            r0.setAutoHide(r1)
        L18:
            java.util.ArrayList r0 = r12.K3     // Catch: java.lang.Exception -> L22
            if (r0 != 0) goto L1d
            goto L22
        L1d:
            int r0 = r0.size()     // Catch: java.lang.Exception -> L22
            goto L23
        L22:
            r0 = r1
        L23:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            int r3 = com.mycompany.app.soulbrowser.R.string.locale
            java.lang.String r3 = r12.getString(r3)
            r2.append(r3)
            r3 = 1
            if (r0 <= r3) goto L42
            int r4 = r12.I3
            if (r4 < r0) goto L39
            r4 = r1
        L39:
            java.lang.String r5 = " "
            r2.append(r5)
            int r4 = r4 + r3
            r2.append(r4)
        L42:
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            com.mycompany.app.view.MyPopupAdapter$PopMenuItem r4 = new com.mycompany.app.view.MyPopupAdapter$PopMenuItem
            int r5 = com.mycompany.app.soulbrowser.R.string.sub_file
            r4.<init>(r1, r5)
            r9.add(r4)
            com.mycompany.app.view.MyPopupAdapter$PopMenuItem r4 = new com.mycompany.app.view.MyPopupAdapter$PopMenuItem
            int r5 = com.mycompany.app.soulbrowser.R.string.sub_setting
            r4.<init>(r3, r5)
            r9.add(r4)
            com.mycompany.app.view.MyPopupAdapter$PopMenuItem r4 = new com.mycompany.app.view.MyPopupAdapter$PopMenuItem
            boolean r5 = com.mycompany.app.pref.PrefSub.k
            if (r5 == 0) goto L64
            int r5 = com.mycompany.app.soulbrowser.R.string.sub_off
            goto L66
        L64:
            int r5 = com.mycompany.app.soulbrowser.R.string.sub_on
        L66:
            if (r0 != 0) goto L6a
            r6 = r3
            goto L6b
        L6a:
            r6 = r1
        L6b:
            r7 = 2
            r8 = 0
            r4.<init>(r7, r5, r6, r8)
            r9.add(r4)
            com.mycompany.app.view.MyPopupAdapter$PopMenuItem r4 = new com.mycompany.app.view.MyPopupAdapter$PopMenuItem
            int r5 = com.mycompany.app.soulbrowser.R.string.sub_sync
            if (r0 != 0) goto L7b
            r6 = r3
            goto L7c
        L7b:
            r6 = r1
        L7c:
            r10 = 3
            r4.<init>(r10, r5, r6, r8)
            r9.add(r4)
            com.mycompany.app.view.MyPopupAdapter$PopMenuItem r4 = new com.mycompany.app.view.MyPopupAdapter$PopMenuItem
            java.lang.String r2 = r2.toString()
            if (r0 >= r7) goto L8c
            goto L8d
        L8c:
            r3 = r1
        L8d:
            r4.<init>()
            r0 = 4
            r4.f18880a = r0
            r4.d = r2
            r4.e = r1
            r4.f = r1
            r4.g = r3
            r9.add(r4)
            com.mycompany.app.view.MyPopupMenu r5 = new com.mycompany.app.view.MyPopupMenu
            com.mycompany.app.view.MySizeFrame r7 = r12.K1
            com.mycompany.app.video.VideoActivity$73 r11 = new com.mycompany.app.video.VideoActivity$73
            r11.<init>()
            r10 = 1
            r6 = r12
            r8 = r13
            r5.<init>(r6, r7, r8, r9, r10, r11)
            r6.O3 = r5
            r6.Z0 = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.video.VideoActivity.controlSubIcon(android.view.View):void");
    }

    public final void d1() {
        DialogDownUrl dialogDownUrl = this.Z2;
        if (dialogDownUrl != null) {
            dialogDownUrl.dismiss();
            this.Z2 = null;
            this.z3 = false;
            MainUtil.K7(this, false);
        }
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        VideoControl videoControl;
        if (!this.F1 && this.R1 == null && this.S1 == null && motionEvent != null && (videoControl = this.M1) != null) {
            if (this.A3) {
                t1();
                return true;
            }
            if (videoControl.s(motionEvent)) {
                t1();
                GestureDetector gestureDetector = this.U1;
                if (gestureDetector != null) {
                    gestureDetector.onTouchEvent(motionEvent);
                }
                return true;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 1 || actionMasked == 3) {
                this.M1.h();
            }
            if (this.n3 != null) {
                x(motionEvent);
            }
            GestureDetector gestureDetector2 = this.U1;
            if (gestureDetector2 != null) {
                gestureDetector2.onTouchEvent(motionEvent);
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final int e() {
        int currentPosition;
        if (!Q0()) {
            return 0;
        }
        int i = this.E2;
        if (i != -1) {
            return i;
        }
        MediaPlayer mediaPlayer = this.u2;
        if (mediaPlayer == null || (currentPosition = mediaPlayer.getCurrentPosition()) < 0) {
            return 0;
        }
        return currentPosition;
    }

    public final void e1() {
        DialogConfirm dialogConfirm = this.Y2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.Y2 = null;
            this.z3 = false;
            MainUtil.K7(this, false);
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final int f() {
        if (!Q0()) {
            return this.D2;
        }
        MediaPlayer mediaPlayer = this.u2;
        if (mediaPlayer == null) {
            return this.D2;
        }
        int duration = mediaPlayer.getDuration();
        if (duration < 0) {
            return 0;
        }
        return duration;
    }

    public final void f1() {
        DialogConfirm dialogConfirm = this.b3;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.b3 = null;
            this.z3 = false;
            MainUtil.K7(this, false);
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        this.G1 = true;
        setResult(-1);
        super.finish();
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final boolean g() {
        boolean z;
        if (this.s3) {
            if (this.v3 == 2) {
                return true;
            }
            return false;
        }
        if (!Q0()) {
            z = this.C2;
        } else {
            MediaPlayer mediaPlayer = this.u2;
            if (mediaPlayer == null) {
                z = this.C2;
            } else {
                return mediaPlayer.isPlaying();
            }
        }
        return !z;
    }

    public final void g1() {
        DialogOpenType dialogOpenType = this.c3;
        if (dialogOpenType != null) {
            dialogOpenType.dismiss();
            this.c3 = null;
            this.z3 = false;
            MainUtil.K7(this, false);
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void h(int i) {
        if (Q0()) {
            if (f() > 0) {
                this.E2 = i;
                MediaPlayer mediaPlayer = this.u2;
                if (mediaPlayer != null) {
                    mediaPlayer.seekTo(i);
                }
                VideoAudio videoAudio = this.l3;
                if (videoAudio != null) {
                    videoAudio.b(i);
                }
            }
            if (this.k2) {
                L1(false);
            }
        }
    }

    public final void h1() {
        DialogSeekAudio dialogSeekAudio = this.X2;
        if (dialogSeekAudio != null) {
            dialogSeekAudio.dismiss();
            this.X2 = null;
            this.z3 = false;
            MainUtil.K7(this, false);
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void i() {
        boolean z = PrefRead.q;
        if (z) {
            if (!z || y1()) {
                return;
            }
            e1();
            this.z3 = true;
            MainApp.K1 = true;
            DialogConfirm dialogConfirm = new DialogConfirm(this, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.video.VideoActivity.50
                @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                public final void a(boolean z2) {
                    VideoActivity videoActivity = VideoActivity.this;
                    if (z2) {
                        PrefRead.q = false;
                        PrefSet.d(8, videoActivity.f1, "mGuideDown", false);
                    }
                    int i = VideoActivity.r4;
                    videoActivity.e1();
                }
            });
            this.Y2 = dialogConfirm;
            dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.video.VideoActivity.51
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    int i = VideoActivity.r4;
                    VideoActivity videoActivity = VideoActivity.this;
                    videoActivity.e1();
                    videoActivity.K1();
                }
            });
            this.Y2.E = true;
            return;
        }
        K1();
    }

    public final void i1() {
        DialogSeekBright dialogSeekBright = this.W2;
        if (dialogSeekBright != null) {
            dialogSeekBright.dismiss();
            this.W2 = null;
            this.z3 = false;
            MainUtil.K7(this, false);
        }
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void j() {
        boolean hasWindowFocus;
        int i;
        MyWebSafe myWebSafe;
        boolean z = this.s3;
        boolean z2 = true;
        if (z) {
            if (z && (i = this.v3) != 0 && i != 2 && (myWebSafe = this.n3) != null) {
                MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.play();}})();", true);
                return;
            }
            return;
        }
        this.C2 = false;
        if (this.b2 == null) {
            View a0 = a0();
            if (a0 == null) {
                hasWindowFocus = false;
            } else {
                hasWindowFocus = a0.hasWindowFocus();
            }
            if (!hasWindowFocus) {
                z2 = false;
            }
        }
        M1(z2);
    }

    public final void j1() {
        DialogSeekSub dialogSeekSub = this.Q3;
        if (dialogSeekSub != null) {
            dialogSeekSub.dismiss();
            this.Q3 = null;
            this.z3 = false;
            MainUtil.K7(this, false);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
    public final boolean k() {
        return false;
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        VideoControl videoControl;
        DialogCapture dialogCapture = this.V2;
        if (dialogCapture == null || !dialogCapture.o(i, i2, intent)) {
            DialogDownUrl dialogDownUrl = this.Z2;
            if (dialogDownUrl == null || !dialogDownUrl.P(i, i2, intent)) {
                if (i == 2) {
                    if (i2 == -1 && (videoControl = this.M1) != null) {
                        videoControl.setTouchLock(false);
                        return;
                    }
                    return;
                }
                if (i == 9) {
                    if (i2 == -1 && intent != null) {
                        Uri data = intent.getData();
                        if (data == null) {
                            MainUtil.e8(this, R.string.invalid_file);
                            return;
                        }
                        String uri = data.toString();
                        if (TextUtils.isEmpty(uri)) {
                            MainUtil.e8(this, R.string.invalid_file);
                            return;
                        }
                        if (uri.equals(this.G3)) {
                            MainUtil.z7(this.f1, data);
                            return;
                        }
                        if (!Compress.H(MainUtil.W0(MainUri.k(this.f1, uri)))) {
                            MainUtil.e8(this, R.string.invalid_file);
                            return;
                        }
                        MainUtil.z7(this.f1, data);
                        s1();
                        this.G3 = uri;
                        SubTask subTask = this.J3;
                        if (subTask != null) {
                            subTask.f12839c = true;
                        }
                        this.J3 = null;
                        SubTask subTask2 = new SubTask(this, true);
                        this.J3 = subTask2;
                        subTask2.b(this.f1);
                        return;
                    }
                    return;
                }
                if (i == 17) {
                    if (i2 == -1 && intent != null) {
                        Uri data2 = intent.getData();
                        if (data2 == null) {
                            MainUtil.e8(this, R.string.invalid_file);
                            return;
                        }
                        String uri2 = data2.toString();
                        if (TextUtils.isEmpty(uri2)) {
                            MainUtil.e8(this, R.string.invalid_file);
                            return;
                        } else {
                            MainUtil.z7(this.f1, data2);
                            F1(uri2, 0, true);
                            return;
                        }
                    }
                    return;
                }
                if (i == 1) {
                    J1();
                }
            }
        }
    }

    public final void k1() {
        DialogSetDown dialogSetDown = this.a3;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.a3 = null;
            this.z3 = false;
            MainUtil.K7(this, false);
        }
        this.f4 = null;
        this.g4 = null;
        this.h4 = null;
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void l() {
        if (this.n3 != null) {
            MainUtil.e8(this, R.string.not_support_video);
            return;
        }
        if (this.z2) {
            MainUtil.e8(this, R.string.save_fail);
            return;
        }
        if (!this.w2) {
            MainUtil.e8(this, R.string.wait_retry);
            return;
        }
        CropTask cropTask = this.U2;
        if (cropTask != null) {
            cropTask.f12839c = true;
        }
        this.U2 = null;
        CropTask cropTask2 = new CropTask(this);
        this.U2 = cropTask2;
        cropTask2.b(this.f1);
    }

    public final void l1() {
        MyPopupMenu myPopupMenu = this.P3;
        if (myPopupMenu != null) {
            this.Z0 = this.O3;
            myPopupMenu.a();
            this.P3 = null;
        }
        VideoControl videoControl = this.M1;
        if (videoControl != null) {
            videoControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
    public final boolean m() {
        if (this.Y1 != 0) {
            return true;
        }
        return false;
    }

    public final void m1(boolean z) {
        MyCoverView myCoverView = this.Q1;
        if (myCoverView != null) {
            this.x2 = false;
            if (z) {
                if (myCoverView.f) {
                    myCoverView.setBlockTouch(false);
                    if (this.m2) {
                        this.m2 = false;
                        this.Q1.setBackground(null);
                    }
                    this.Q1.f(false);
                    return;
                }
                return;
            }
            this.j3 = 0L;
            if (this.k2 && !myCoverView.f) {
                if (this.m2) {
                    this.m2 = false;
                    myCoverView.setBackground(null);
                }
                this.Q1.f(true);
            }
        }
    }

    public final void n1() {
        MyPopupMenu myPopupMenu = this.f3;
        if (myPopupMenu != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.f3 = null;
        }
        VideoControl videoControl = this.M1;
        if (videoControl != null) {
            videoControl.setAutoHide(true);
        }
    }

    public final void o1() {
        MyPopupMenu myPopupMenu = this.d3;
        if (myPopupMenu != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.d3 = null;
        }
        VideoControl videoControl = this.M1;
        if (videoControl != null) {
            videoControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        MySizeFrame mySizeFrame;
        super.onConfigurationChanged(configuration);
        if (this.i1 || (mySizeFrame = this.K1) == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.84
            @Override // java.lang.Runnable
            public final void run() {
                VideoActivity videoActivity = VideoActivity.this;
                if (videoActivity.i1 || videoActivity.K1 == null) {
                    return;
                }
                VideoSubLayout videoSubLayout = videoActivity.D3;
                if (videoSubLayout != null) {
                    videoSubLayout.f();
                }
                VideoControl videoControl = videoActivity.M1;
                if (videoControl != null && videoControl.s(null)) {
                    videoActivity.r0();
                    return;
                }
                DialogCapture dialogCapture = videoActivity.V2;
                if (dialogCapture != null) {
                    dialogCapture.q(videoActivity.h0());
                    return;
                }
                videoActivity.o1();
                videoActivity.p1();
                videoActivity.n1();
                videoActivity.b1();
                videoActivity.q1();
                videoActivity.l1();
                VideoControl videoControl2 = videoActivity.M1;
                if (videoControl2 != null) {
                    videoControl2.o(false);
                }
                videoActivity.r0();
            }
        });
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [com.mycompany.app.view.MySizeFrame, android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z;
        MySizeFrame mySizeFrame;
        View a0;
        this.u0 = true;
        this.h1 = 1;
        super.onCreate(bundle);
        MainActivity.MainViewerListener mainViewerListener = new MainActivity.MainViewerListener() { // from class: com.mycompany.app.video.VideoActivity.1
            @Override // com.mycompany.app.main.MainActivity.MainViewerListener
            public final void a(int i) {
                VideoActivity videoActivity = VideoActivity.this;
                videoActivity.C1 = i;
                VideoControl videoControl = videoActivity.M1;
                if (videoControl == null) {
                    return;
                }
                videoControl.setNaviHeight(i);
                videoActivity.M1.A();
            }
        };
        if (MainConst.e) {
            this.H0 = mainViewerListener;
            d0();
        }
        Uri data = getIntent().getData();
        this.d2 = data;
        if (data == null) {
            MainUtil.e8(this, R.string.invalid_path);
            finish();
            return;
        }
        MainUtil.i8(this.f1);
        this.D1 = MainUtil.O5(this.f1);
        this.K2 = -1;
        this.e2 = this.d2.toString();
        v1();
        Intent intent = getIntent();
        if (intent == null || Build.VERSION.SDK_INT < 26) {
            z = false;
        } else {
            z = intent.getBooleanExtra("EXTRA_PIP", false);
        }
        this.i2 = z;
        this.i1 = z;
        U0(intent);
        this.V0 = new MainActivity.SystemBarListener() { // from class: com.mycompany.app.video.VideoActivity.86
            @Override // com.mycompany.app.main.MainActivity.SystemBarListener
            public final boolean a() {
                return PrefVideo.n;
            }

            @Override // com.mycompany.app.main.MainActivity.SystemBarListener
            public final boolean b() {
                VideoActivity videoActivity = VideoActivity.this;
                if (videoActivity.s3) {
                    return false;
                }
                VideoControl videoControl = videoActivity.M1;
                if ((videoControl != null && videoControl.s(null)) || !videoActivity.w1() || videoActivity.h0()) {
                    return false;
                }
                return true;
            }

            @Override // com.mycompany.app.main.MainActivity.SystemBarListener
            public final boolean c() {
                return true;
            }
        };
        if (!this.i2) {
            MainUtil.S7(this);
            r0();
        }
        if (Build.VERSION.SDK_INT < 30 && (a0 = a0()) != null) {
            a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.video.VideoActivity.2
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public final void onSystemUiVisibilityChange(int i) {
                    VideoActivity videoActivity = VideoActivity.this;
                    DialogCapture dialogCapture = videoActivity.V2;
                    if (dialogCapture != null) {
                        dialogCapture.r();
                        return;
                    }
                    if ((i & 4) == 4) {
                        if (videoActivity.w1()) {
                            videoActivity.r0();
                        }
                    } else if (!videoActivity.w1()) {
                        videoActivity.r0();
                    }
                }
            });
        }
        o0(null, 19);
        o0(null, 2);
        o0(null, 9);
        o0(null, 17);
        o0(null, 1);
        ?? frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        TextureView textureView = new TextureView(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        frameLayout.addView(textureView, layoutParams);
        VideoSubLayout videoSubLayout = new VideoSubLayout(this);
        videoSubLayout.setVisibility(8);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 8388691;
        frameLayout.addView(videoSubLayout, layoutParams2);
        VideoControl videoControl = new VideoControl(this);
        videoControl.setNaviHeight(this.C1);
        videoControl.setVisibility(4);
        frameLayout.addView(videoControl, -1, -1);
        MyCoverView myCoverView = new MyCoverView(this, -1, (int) MainUtil.G(this, 2.0f), MainApp.z1);
        myCoverView.setBackColor(-1593835520);
        myCoverView.setVisibility(8);
        frameLayout.addView(myCoverView, -1, -1);
        this.K1 = frameLayout;
        this.L1 = textureView;
        this.C3 = videoSubLayout;
        this.M1 = videoControl;
        this.Q1 = myCoverView;
        Handler handler = this.O0;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.7
                @Override // java.lang.Runnable
                public final void run() {
                    final VideoActivity videoActivity = VideoActivity.this;
                    VideoControl videoControl2 = videoActivity.M1;
                    if (videoControl2 != null) {
                        videoControl2.y(videoActivity, videoActivity.getWindow(), videoActivity.D1, videoActivity.s3, videoActivity);
                        videoActivity.M1.setIconDown(videoActivity.k3);
                        Handler handler2 = videoActivity.O0;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.8
                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r15v5, types: [android.widget.LinearLayout, com.mycompany.app.web.WebVideoProgress, android.view.View, com.mycompany.app.view.MyFadeLinear, android.view.ViewGroup] */
                            /* JADX WARN: Type inference failed for: r5v5, types: [android.widget.LinearLayout, com.mycompany.app.web.WebVideoProgress, android.view.View, com.mycompany.app.view.MyFadeLinear, android.view.ViewGroup] */
                            /* JADX WARN: Type inference failed for: r9v0, types: [android.widget.LinearLayout, com.mycompany.app.web.WebVideoProgress, android.view.View, com.mycompany.app.view.MyFadeLinear, android.view.ViewGroup] */
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i;
                                int min;
                                final VideoActivity videoActivity2 = VideoActivity.this;
                                MySizeFrame mySizeFrame2 = videoActivity2.K1;
                                if (mySizeFrame2 != 0) {
                                    int G = (int) MainUtil.G(videoActivity2, 20.0f);
                                    int G2 = (int) MainUtil.G(videoActivity2, 36.0f);
                                    int G3 = (int) MainUtil.G(videoActivity2, 90.0f);
                                    int G4 = (int) MainUtil.G(videoActivity2, 10.0f);
                                    int G5 = (int) MainUtil.G(videoActivity2, 10.0f);
                                    int G6 = (int) MainUtil.G(videoActivity2, 160.0f);
                                    ?? myFadeLinear = new MyFadeLinear(videoActivity2);
                                    myFadeLinear.setPadding(G, G, G, G);
                                    myFadeLinear.setGravity(16);
                                    myFadeLinear.setBaselineAligned(false);
                                    myFadeLinear.setOrientation(0);
                                    myFadeLinear.setTouchable(true);
                                    myFadeLinear.setAutoHide(true);
                                    myFadeLinear.setVisibility(8);
                                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                                    layoutParams3.gravity = 17;
                                    mySizeFrame2.addView((View) myFadeLinear, layoutParams3);
                                    ImageView imageView = new ImageView(videoActivity2);
                                    imageView.setImageResource(R.drawable.outline_brightness_6_white_36);
                                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(G2, G2);
                                    layoutParams4.gravity = 8388627;
                                    myFadeLinear.addView(imageView, layoutParams4);
                                    MyTextView myTextView = new MyTextView(videoActivity2);
                                    myTextView.setGravity(1);
                                    myTextView.setTextSize(1, 40.0f);
                                    myTextView.setTextColor(-1);
                                    Typeface typeface = Typeface.DEFAULT;
                                    myTextView.setTypeface(Typeface.create(typeface, 1));
                                    myTextView.setIncludeFontPadding(false);
                                    myTextView.setOutlineColor(-16777216);
                                    myTextView.setMinWidth(G3);
                                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
                                    layoutParams5.gravity = 8388627;
                                    layoutParams5.setMarginStart(G4);
                                    myFadeLinear.addView(myTextView, layoutParams5);
                                    MyProgressVideo myProgressVideo = new MyProgressVideo(videoActivity2);
                                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(G5, G6);
                                    layoutParams6.setMarginStart(G);
                                    myFadeLinear.addView(myProgressVideo, layoutParams6);
                                    ?? myFadeLinear2 = new MyFadeLinear(videoActivity2);
                                    myFadeLinear2.setPadding(G, G, G, G);
                                    myFadeLinear2.setGravity(16);
                                    myFadeLinear2.setBaselineAligned(false);
                                    myFadeLinear2.setOrientation(0);
                                    myFadeLinear2.setTouchable(true);
                                    myFadeLinear2.setAutoHide(true);
                                    myFadeLinear2.setVisibility(8);
                                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
                                    layoutParams7.gravity = 17;
                                    mySizeFrame2.addView((View) myFadeLinear2, layoutParams7);
                                    ImageView imageView2 = new ImageView(videoActivity2);
                                    imageView2.setImageResource(R.drawable.ic_volume);
                                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(G2, G2);
                                    layoutParams8.gravity = 8388627;
                                    myFadeLinear2.addView(imageView2, layoutParams8);
                                    MyTextView myTextView2 = new MyTextView(videoActivity2);
                                    myTextView2.setGravity(1);
                                    myTextView2.setTextSize(1, 40.0f);
                                    myTextView2.setTextColor(-1);
                                    myTextView2.setTypeface(Typeface.create(typeface, 1));
                                    myTextView2.setIncludeFontPadding(false);
                                    myTextView2.setOutlineColor(-16777216);
                                    myTextView2.setMinWidth(G3);
                                    LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
                                    layoutParams9.gravity = 8388627;
                                    layoutParams9.setMarginStart(G4);
                                    myFadeLinear2.addView(myTextView2, layoutParams9);
                                    MyProgressVideo myProgressVideo2 = new MyProgressVideo(videoActivity2);
                                    LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(G5, G6);
                                    layoutParams10.setMarginStart(G);
                                    myFadeLinear2.addView(myProgressVideo2, layoutParams10);
                                    ?? myFadeLinear3 = new MyFadeLinear(videoActivity2);
                                    myFadeLinear3.setPadding(0, G, 0, G);
                                    myFadeLinear3.setOrientation(1);
                                    myFadeLinear3.setTouchable(true);
                                    myFadeLinear3.setAutoHide(true);
                                    myFadeLinear3.setVisibility(8);
                                    FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-1, -2);
                                    layoutParams11.gravity = 8388627;
                                    mySizeFrame2.addView((View) myFadeLinear3, layoutParams11);
                                    MyTextView myTextView3 = new MyTextView(videoActivity2);
                                    myTextView3.setGravity(1);
                                    myTextView3.setSingleLine(true);
                                    myTextView3.setTextSize(1, 40.0f);
                                    myTextView3.setTextColor(-1);
                                    myTextView3.setTypeface(Typeface.create(typeface, 1));
                                    myTextView3.setIncludeFontPadding(false);
                                    myTextView3.setOutlineColor(-16777216);
                                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, -2);
                                    layoutParams12.setMarginStart(MainApp.i1);
                                    layoutParams12.setMarginEnd(MainApp.i1);
                                    myFadeLinear3.addView(myTextView3, layoutParams12);
                                    int width = mySizeFrame2.getWidth();
                                    int height = mySizeFrame2.getHeight();
                                    if (width == 0 || height == 0 || (min = Math.min(width, height) - (MainApp.i1 * 2)) <= 0) {
                                        i = -1;
                                    } else {
                                        myFadeLinear3.I = MainApp.f1 + min;
                                        i = min;
                                    }
                                    MyProgressVideo myProgressVideo3 = new MyProgressVideo(videoActivity2);
                                    LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(i, G5);
                                    layoutParams13.gravity = 1;
                                    layoutParams13.topMargin = G;
                                    myFadeLinear3.addView(myProgressVideo3, layoutParams13);
                                    videoActivity2.N1 = myFadeLinear;
                                    videoActivity2.O1 = myFadeLinear2;
                                    videoActivity2.P1 = myFadeLinear3;
                                    myFadeLinear.l(imageView, myTextView, myProgressVideo);
                                    videoActivity2.O1.l(imageView2, myTextView2, myProgressVideo2);
                                    videoActivity2.P1.l(null, myTextView3, myProgressVideo3);
                                    Handler handler3 = videoActivity2.O0;
                                    if (handler3 == null) {
                                        return;
                                    }
                                    handler3.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.9
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final VideoActivity videoActivity3 = VideoActivity.this;
                                            WebVideoProgress webVideoProgress = videoActivity3.N1;
                                            if (webVideoProgress == null) {
                                                return;
                                            }
                                            webVideoProgress.i(1, new WebVideoProgress.WebVidProgListener() { // from class: com.mycompany.app.video.VideoActivity.10
                                                @Override // com.mycompany.app.web.WebVideoProgress.WebVidProgListener
                                                public final void a(int i2) {
                                                    VideoActivity.K0(VideoActivity.this);
                                                }
                                            });
                                            videoActivity3.O1.i(2, null);
                                            videoActivity3.P1.i(3, new WebVideoProgress.WebVidProgListener() { // from class: com.mycompany.app.video.VideoActivity.11
                                                @Override // com.mycompany.app.web.WebVideoProgress.WebVidProgListener
                                                public final void a(int i2) {
                                                    VideoActivity videoActivity4 = VideoActivity.this;
                                                    int round = Math.round((i2 / 1000.0f) * videoActivity4.f());
                                                    if (videoActivity4.k2) {
                                                        videoActivity4.F2 = true;
                                                        videoActivity4.E2 = round;
                                                    } else {
                                                        VideoActivity.L0(videoActivity4, round);
                                                    }
                                                }
                                            });
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            });
        }
        setContentView(this.K1);
        this.Q1.setForeSize(MainApp.z1);
        this.K1.setListener(new ImageSizeListener() { // from class: com.mycompany.app.video.VideoActivity.3
            @Override // com.mycompany.app.image.ImageSizeListener
            public final void a(View view, int i, int i2) {
                WebVideoProgress webVideoProgress = VideoActivity.this.P1;
                if (webVideoProgress != null) {
                    webVideoProgress.h(i, i2);
                }
            }
        });
        ZoomVideoAttacher zoomVideoAttacher = new ZoomVideoAttacher(this.L1, this);
        this.T1 = zoomVideoAttacher;
        zoomVideoAttacher.m = true;
        this.L1.setSurfaceTextureListener(new AnonymousClass4());
        this.U1 = new GestureDetector(this, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.video.VideoActivity.5
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                int i;
                int i2;
                int i3;
                VideoActivity videoActivity = VideoActivity.this;
                VideoControl videoControl2 = videoActivity.M1;
                if (videoControl2 == null) {
                    return false;
                }
                boolean z2 = videoControl2.m0;
                videoControl2.m0 = false;
                if (z2 || videoControl2.s(null)) {
                    return false;
                }
                if (videoActivity.h0()) {
                    i = PrefVideo.F;
                    i2 = PrefVideo.G;
                } else {
                    i = PrefVideo.D;
                    i2 = PrefVideo.E;
                }
                float x = motionEvent.getX();
                if (x < i) {
                    i3 = PrefVideo.A;
                } else if (x > videoActivity.K1.getWidth() - i2) {
                    i3 = PrefVideo.B;
                } else {
                    i3 = PrefVideo.C;
                }
                if (i3 == 0) {
                    VideoActivity.I0(videoActivity);
                } else if (i3 == 1) {
                    VideoActivity.H0(videoActivity);
                } else if (i3 == 2) {
                    videoActivity.N1();
                }
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                VideoControl videoControl2;
                VideoActivity videoActivity = VideoActivity.this;
                if (videoActivity.R1 == null && videoActivity.S1 == null && (videoControl2 = videoActivity.M1) != null) {
                    boolean z2 = videoControl2.m0;
                    videoControl2.m0 = false;
                    if (!z2) {
                        if (!videoActivity.F1 && !videoActivity.y1()) {
                            VideoControl videoControl3 = videoActivity.M1;
                            if (videoControl3.f()) {
                                videoControl3.o(true);
                                return true;
                            }
                            videoControl3.C(true);
                            return true;
                        }
                        videoActivity.M1.o(false);
                        return true;
                    }
                }
                return false;
            }
        });
        boolean z2 = PrefVideo.j;
        if (z2) {
            if (z2 && !z1() && (mySizeFrame = this.K1) != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyFadeFrame Y0;
                        int i = VideoActivity.r4;
                        if (PrefVideo.j) {
                            final VideoActivity videoActivity = VideoActivity.this;
                            if (!videoActivity.z1() && (Y0 = VideoActivity.Y0(videoActivity)) != null) {
                                videoActivity.R1 = Y0;
                                Y0.setListener(new MyFadeListener() { // from class: com.mycompany.app.video.VideoActivity.13
                                    @Override // com.mycompany.app.view.MyFadeListener
                                    public final void a(boolean z3) {
                                        if (!z3) {
                                            VideoActivity videoActivity2 = VideoActivity.this;
                                            MyFadeFrame myFadeFrame = videoActivity2.R1;
                                            if (myFadeFrame != null && videoActivity2.K1 != null) {
                                                myFadeFrame.f();
                                                videoActivity2.K1.removeView(videoActivity2.R1);
                                                videoActivity2.R1 = null;
                                            }
                                            boolean z4 = PrefZone.b0;
                                            if (z4 && z4 && !videoActivity2.z1()) {
                                                videoActivity2.R3 = true;
                                                Handler handler2 = videoActivity2.O0;
                                                if (handler2 != null) {
                                                    handler2.post(new AnonymousClass16());
                                                }
                                            }
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyFadeListener
                                    public final void b(boolean z3, boolean z4) {
                                    }
                                });
                                videoActivity.R1.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.video.VideoActivity.14
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        boolean z3 = PrefVideo.j;
                                        VideoActivity videoActivity2 = VideoActivity.this;
                                        if (z3) {
                                            PrefVideo.j = false;
                                            PrefSet.d(13, videoActivity2.f1, "mGuidePlayer", false);
                                        }
                                        MyFadeFrame myFadeFrame = videoActivity2.R1;
                                        if (myFadeFrame != null) {
                                            myFadeFrame.d(true);
                                        }
                                        return true;
                                    }
                                });
                                MySizeFrame mySizeFrame2 = videoActivity.K1;
                                if (mySizeFrame2 == null) {
                                    return;
                                }
                                mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.15
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyFadeFrame myFadeFrame;
                                        boolean z3 = PrefVideo.j;
                                        VideoActivity videoActivity2 = VideoActivity.this;
                                        if (!z3) {
                                            int i2 = VideoActivity.r4;
                                            videoActivity2.getClass();
                                            return;
                                        }
                                        MySizeFrame mySizeFrame3 = videoActivity2.K1;
                                        if (mySizeFrame3 != null && (myFadeFrame = videoActivity2.R1) != null) {
                                            mySizeFrame3.addView(myFadeFrame, -1, -1);
                                        }
                                    }
                                });
                            }
                        }
                    }
                });
            }
        } else {
            boolean z3 = PrefZone.b0;
            if (z3 && z3 && !z1()) {
                this.R3 = false;
                Handler handler2 = this.O0;
                if (handler2 != null) {
                    handler2.post(new AnonymousClass16());
                }
            }
        }
        this.H1 = !this.i2;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        T0();
        View view = this.I1;
        if (view != null) {
            SystemRunnable systemRunnable = this.J1;
            if (systemRunnable != null) {
                view.removeCallbacks(systemRunnable);
            }
            this.I1 = null;
        }
        this.J1 = null;
        MySizeFrame mySizeFrame = this.K1;
        if (mySizeFrame != null) {
            mySizeFrame.f18961c = null;
            this.K1 = null;
        }
        VideoControl videoControl = this.M1;
        if (videoControl != null) {
            videoControl.g();
            this.M1 = null;
        }
        WebVideoProgress webVideoProgress = this.N1;
        if (webVideoProgress != null) {
            webVideoProgress.f();
            this.N1 = null;
        }
        WebVideoProgress webVideoProgress2 = this.O1;
        if (webVideoProgress2 != null) {
            webVideoProgress2.f();
            this.O1 = null;
        }
        WebVideoProgress webVideoProgress3 = this.P1;
        if (webVideoProgress3 != null) {
            webVideoProgress3.f();
            this.P1 = null;
        }
        MyCoverView myCoverView = this.Q1;
        if (myCoverView != null) {
            myCoverView.i();
            this.Q1 = null;
        }
        MyFadeFrame myFadeFrame = this.R1;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.R1 = null;
        }
        MyFadeFrame myFadeFrame2 = this.S1;
        if (myFadeFrame2 != null) {
            myFadeFrame2.f();
            this.S1 = null;
        }
        ZoomVideoAttacher zoomVideoAttacher = this.T1;
        if (zoomVideoAttacher != null) {
            zoomVideoAttacher.j();
            this.T1 = null;
        }
        EventHandler eventHandler = this.N3;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.N3 = null;
        }
        VideoSubLayout videoSubLayout = this.D3;
        if (videoSubLayout != null) {
            ValueAnimator valueAnimator = videoSubLayout.k;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                videoSubLayout.k = null;
            }
            videoSubLayout.f18484c = null;
            videoSubLayout.f = null;
            videoSubLayout.g = null;
            videoSubLayout.h = null;
            videoSubLayout.i = null;
            videoSubLayout.j = null;
            videoSubLayout.l = null;
            this.D3 = null;
        }
        WebVideoProgress webVideoProgress4 = this.E3;
        if (webVideoProgress4 != null) {
            webVideoProgress4.f();
            this.E3 = null;
        }
        MyWebSafe myWebSafe = this.n3;
        if (myWebSafe != null) {
            if (this.o3) {
                this.o3 = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.n3);
            this.n3 = null;
        }
        this.L1 = null;
        this.U1 = null;
        this.d2 = null;
        this.e2 = null;
        this.n2 = null;
        this.o2 = null;
        this.p2 = null;
        this.q2 = null;
        this.r2 = null;
        this.J2 = null;
        this.r3 = null;
        this.F3 = null;
        this.G3 = null;
        this.K3 = null;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 79 && i != 85) {
            if (i != 86) {
                if (i != 126) {
                    if (i != 127) {
                        return super.onKeyDown(i, keyEvent);
                    }
                } else if (!x1()) {
                    if (this.z2) {
                        D();
                        O1();
                        return true;
                    }
                    if (!g()) {
                        j();
                        O1();
                        return true;
                    }
                }
            }
            if (!x1() && g()) {
                c();
                O1();
                return true;
            }
        } else if (!x1()) {
            N1();
            O1();
            return true;
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        boolean z;
        boolean booleanExtra;
        MyWebSafe myWebSafe;
        super.onNewIntent(intent);
        this.f1 = getApplicationContext();
        this.H1 = false;
        this.f2 = false;
        this.g2 = null;
        this.h2 = null;
        if (this.i1) {
            String stringExtra = intent.getStringExtra("EXTRA_NOTI");
            if (!TextUtils.isEmpty(stringExtra)) {
                String stringExtra2 = intent.getStringExtra("EXTRA_TYPE");
                this.f2 = true;
                this.g2 = stringExtra;
                this.h2 = stringExtra2;
                return;
            }
        }
        Uri data = intent.getData();
        if (data == null) {
            MainUtil.e8(this, R.string.invalid_path);
            finish();
            return;
        }
        boolean O5 = MainUtil.O5(this.f1);
        this.D1 = O5;
        VideoControl videoControl = this.M1;
        if (videoControl != null) {
            videoControl.setRtl(O5);
        }
        this.d2 = data;
        String uri = data.toString();
        if (!TextUtils.isEmpty(this.e2) && this.e2.equals(uri)) {
            z = true;
        } else {
            z = false;
        }
        this.e2 = uri;
        v1();
        if (Build.VERSION.SDK_INT < 26) {
            booleanExtra = false;
        } else {
            booleanExtra = intent.getBooleanExtra("EXTRA_PIP", false);
        }
        this.i2 = booleanExtra;
        this.i1 = booleanExtra;
        if (!z) {
            U0(intent);
            if (!this.s3 && (myWebSafe = this.n3) != null) {
                if (this.o3) {
                    this.o3 = false;
                    myWebSafe.stopLoading();
                }
                MainUtil.P6(this.n3);
                this.n3 = null;
                this.p3 = false;
                VideoControl videoControl2 = this.M1;
                if (videoControl2 != null) {
                    videoControl2.z();
                }
            }
            C1();
        }
        c1();
        this.H1 = !this.i2;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        int i;
        super.onPause();
        this.E1 = false;
        if (this.z3) {
            MainUtil.K7(this, false);
        } else {
            DialogCapture dialogCapture = this.V2;
            if (dialogCapture != null && dialogCapture.U) {
                MainUtil.K7(this, false);
            }
        }
        if (this.w2 && f() > 10) {
            i = e();
            DbBookVpos.b(this.f1, i, this.e2);
        } else {
            i = 0;
        }
        if (isFinishing()) {
            VideoAudio videoAudio = this.l3;
            if (videoAudio != null) {
                VideoAudio.PlayTask playTask = videoAudio.d;
                if (playTask != null) {
                    playTask.f12839c = true;
                }
                videoAudio.d = null;
                videoAudio.e = false;
                videoAudio.f = false;
                MediaPlayer mediaPlayer = videoAudio.f18444c;
                videoAudio.i = mediaPlayer;
                videoAudio.f18444c = null;
                if (mediaPlayer != null) {
                    MainApp.J(videoAudio.f18443a, new VideoAudio.AnonymousClass4());
                }
                videoAudio.f18443a = null;
                videoAudio.b = null;
                videoAudio.g = null;
                this.l3 = null;
            }
            C1();
            CropTask cropTask = this.U2;
            if (cropTask != null) {
                cropTask.f12839c = true;
            }
            this.U2 = null;
            SubTask subTask = this.J3;
            if (subTask != null) {
                subTask.f12839c = true;
            }
            this.J3 = null;
            c1();
            o1();
            p1();
            n1();
            b1();
            q1();
            l1();
        } else if (this.b2 == null) {
            if (this.w2) {
                this.G2 = i;
                this.I2 = !this.i3;
            }
            C1();
            MyWebSafe myWebSafe = this.n3;
            if (myWebSafe != null) {
                myWebSafe.onPause();
            }
        }
        this.F1 = true;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.E1 = true;
        this.F1 = false;
        this.B3 = false;
        this.i3 = false;
        this.j2 = this.i1;
        T0();
        m1(true);
        if (this.t3) {
            this.t3 = false;
            u1();
        } else {
            R0();
        }
        MyWebSafe myWebSafe = this.n3;
        if (myWebSafe != null) {
            myWebSafe.onResume();
        }
        if (this.z3) {
            MainUtil.K7(this, true);
        } else {
            DialogCapture dialogCapture = this.V2;
            if (dialogCapture != null && dialogCapture.U) {
                MainUtil.K7(this, true);
            }
        }
        r1();
        if (this.f2) {
            String str = this.g2;
            String str2 = this.h2;
            this.f2 = false;
            this.g2 = null;
            this.h2 = null;
            if (!MainUtil.d(this, str, str2, false, false) && !y1()) {
                g1();
                this.z3 = true;
                MainApp.K1 = true;
                int i = R.style.DialogExpandTheme;
                if (h0()) {
                    i = 0;
                }
                DialogOpenType dialogOpenType = new DialogOpenType(this, i, str, false);
                this.c3 = dialogOpenType;
                dialogOpenType.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.video.VideoActivity.58
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i2 = VideoActivity.r4;
                        VideoActivity.this.g1();
                    }
                });
                if (MainConst.e || i != 0) {
                    this.c3.x(0, 0, false, false, true);
                }
                this.c3.E = true;
                return;
            }
            return;
        }
        boolean z = this.i2;
        if (z || this.j2) {
            if (!z && this.j2) {
                MainUtil.S7(this);
            }
            MySizeFrame mySizeFrame = this.K1;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.6
                @Override // java.lang.Runnable
                public final void run() {
                    VideoActivity videoActivity = VideoActivity.this;
                    if (videoActivity.i2) {
                        videoActivity.S0(true);
                    } else if (videoActivity.j2) {
                        videoActivity.r0();
                    }
                    videoActivity.i2 = false;
                    videoActivity.j2 = false;
                }
            });
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        if (this.b2 != null) {
            C1();
            finish();
        }
        T0();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        S0(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        MySizeFrame mySizeFrame;
        super.onWindowFocusChanged(z);
        if (this.i1 || (mySizeFrame = this.K1) == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.83
            @Override // java.lang.Runnable
            public final void run() {
                MySizeFrame mySizeFrame2;
                VideoActivity videoActivity = VideoActivity.this;
                if (!videoActivity.i1 && videoActivity.K1 != null) {
                    VideoControl videoControl = videoActivity.M1;
                    if (videoControl != null && videoControl.s(null)) {
                        videoActivity.r0();
                    } else {
                        DialogCapture dialogCapture = videoActivity.V2;
                        if (dialogCapture != null) {
                            dialogCapture.r();
                        } else {
                            videoActivity.r0();
                        }
                    }
                    if (videoActivity.b2 != null || (mySizeFrame2 = videoActivity.K1) == null) {
                        return;
                    }
                    mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.83.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean hasWindowFocus;
                            VideoActivity videoActivity2 = VideoActivity.this;
                            if (videoActivity2.b2 != null) {
                                return;
                            }
                            View a0 = videoActivity2.a0();
                            if (a0 == null) {
                                hasWindowFocus = false;
                            } else {
                                hasWindowFocus = a0.hasWindowFocus();
                            }
                            videoActivity2.M1(hasWindowFocus);
                        }
                    });
                }
            }
        });
    }

    public final void p1() {
        MyPopupMenu myPopupMenu = this.e3;
        if (myPopupMenu != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.e3 = null;
        }
        VideoControl videoControl = this.M1;
        if (videoControl != null) {
            videoControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
    public final void q() {
        O1();
    }

    public final void q1() {
        VideoControl videoControl;
        MyPopupMenu myPopupMenu = this.O3;
        if (myPopupMenu != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.O3 = null;
        }
        if (this.P3 == null && (videoControl = this.M1) != null) {
            videoControl.setAutoHide(true);
        }
    }

    public final void r1() {
        VideoControl videoControl;
        if (this.H1 && this.E1 && (videoControl = this.M1) != null) {
            FrameLayout castIcon = videoControl.getCastIcon();
            FrameLayout castCtrl = this.M1.getCastCtrl();
            if (castIcon != null && castCtrl != null) {
                v0(castIcon, castCtrl, new VideoCastListener());
            }
        }
    }

    public final void s1() {
        this.G3 = null;
        this.H3 = 0;
        this.I3 = 0;
        this.K3 = null;
        this.L3 = 0;
        this.M3 = -1;
        EventHandler eventHandler = this.N3;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        VideoSubLayout videoSubLayout = this.D3;
        if (videoSubLayout != null) {
            videoSubLayout.setVisibility(8);
        }
    }

    public final void t1() {
        this.V1 = false;
        this.Y1 = 0;
        this.Z1 = false;
        this.a2 = false;
        this.F2 = false;
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final int u() {
        WebVideoProgress webVideoProgress = this.O1;
        if (webVideoProgress == null) {
            return 0;
        }
        return webVideoProgress.getProgress();
    }

    public final void u1() {
        if (this.K1 != null && !TextUtils.isEmpty(this.e2)) {
            if (this.s3) {
                this.w2 = false;
                this.x2 = false;
                this.z2 = false;
                this.C2 = false;
                this.E2 = -1;
                this.S2 = false;
                this.y2 = false;
            }
            if (!this.p3) {
                this.p3 = true;
                if (this.n3 != null) {
                    MySizeFrame mySizeFrame = this.K1;
                    if (mySizeFrame != null) {
                        mySizeFrame.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.30
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoActivity videoActivity = VideoActivity.this;
                                VideoActivity.G0(videoActivity);
                                videoActivity.p3 = false;
                            }
                        }, 400L);
                        return;
                    }
                    return;
                }
                VideoAudio videoAudio = this.l3;
                if (videoAudio != null) {
                    VideoAudio.PlayTask playTask = videoAudio.d;
                    if (playTask != null) {
                        playTask.f12839c = true;
                    }
                    videoAudio.d = null;
                    videoAudio.e = false;
                    videoAudio.f = false;
                    MediaPlayer mediaPlayer = videoAudio.f18444c;
                    videoAudio.i = mediaPlayer;
                    videoAudio.f18444c = null;
                    if (mediaPlayer != null) {
                        MainApp.J(videoAudio.f18443a, new VideoAudio.AnonymousClass4());
                    }
                    videoAudio.f18443a = null;
                    videoAudio.b = null;
                    videoAudio.g = null;
                    this.l3 = null;
                }
                C1();
                CropTask cropTask = this.U2;
                if (cropTask != null) {
                    cropTask.f12839c = true;
                }
                this.U2 = null;
                SubTask subTask = this.J3;
                if (subTask != null) {
                    subTask.f12839c = true;
                }
                this.J3 = null;
                MySizeFrame mySizeFrame2 = this.K1;
                if (mySizeFrame2 == null) {
                    return;
                }
                mySizeFrame2.postDelayed(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.31
                    @Override // java.lang.Runnable
                    public final void run() {
                        final VideoActivity videoActivity = VideoActivity.this;
                        if (videoActivity.K1 == null) {
                            return;
                        }
                        if (videoActivity.n3 != null) {
                            videoActivity.p3 = false;
                            return;
                        }
                        MyWebSafe myWebSafe = new MyWebSafe(videoActivity);
                        videoActivity.n3 = myWebSafe;
                        MainApp.I(videoActivity.f1, myWebSafe);
                        videoActivity.n3.setBackgroundColor(-16777216);
                        videoActivity.K1.addView(videoActivity.n3, 1, new ViewGroup.LayoutParams(-1, -1));
                        videoActivity.M1.B(videoActivity.n3, videoActivity.s3);
                        videoActivity.G1(true);
                        videoActivity.K1.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.32
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoActivity videoActivity2 = VideoActivity.this;
                                MyWebSafe myWebSafe2 = videoActivity2.n3;
                                if (myWebSafe2 == null) {
                                    videoActivity2.p3 = false;
                                    return;
                                }
                                WebSettings settings = myWebSafe2.getSettings();
                                settings.setTextZoom(100);
                                settings.setSupportZoom(true);
                                settings.setBuiltInZoomControls(true);
                                settings.setDisplayZoomControls(false);
                                settings.setUseWideViewPort(true);
                                settings.setLoadWithOverviewMode(true);
                                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                                settings.setSupportMultipleWindows(false);
                                settings.setMediaPlaybackRequiresUserGesture(false);
                                settings.setJavaScriptEnabled(true);
                                myWebSafe2.setOverScrollMode(2);
                                MySizeFrame mySizeFrame3 = videoActivity2.K1;
                                if (mySizeFrame3 == null) {
                                    return;
                                }
                                mySizeFrame3.post(new AnonymousClass33());
                            }
                        });
                    }
                }, 400L);
            }
        }
    }

    public final void v1() {
        String x4 = MainUtil.x4(this.e2);
        this.r3 = x4;
        boolean isEmpty = TextUtils.isEmpty(x4);
        boolean z = !isEmpty;
        this.s3 = z;
        this.t3 = z;
        this.v3 = 0;
        if (isEmpty) {
            this.x3 = 0;
            this.y3 = 0;
        }
    }

    public final boolean w1() {
        VideoControl videoControl = this.M1;
        if (videoControl == null) {
            return false;
        }
        return videoControl.f();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0103  */
    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.video.VideoActivity.x(android.view.MotionEvent):void");
    }

    public final boolean x1() {
        VideoControl videoControl = this.M1;
        if (videoControl != null && videoControl.isEnabled() && !this.M1.n0) {
            return false;
        }
        return true;
    }

    public final boolean y1() {
        if (this.V2 != null || this.W2 != null || this.X2 != null || this.Y2 != null || this.Z2 != null || this.a3 != null || this.b3 != null || this.c3 != null || this.Q3 != null) {
            return true;
        }
        return false;
    }

    @Override // com.mycompany.app.video.VideoControl.ControlListener
    public final void z(boolean z) {
        if (!this.i1 && this.K1 != null) {
            r0();
            if (Build.VERSION.SDK_INT < 30) {
                if (z) {
                    View a0 = a0();
                    this.I1 = a0;
                    if (a0 != null) {
                        this.J1 = new SystemRunnable();
                        a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.video.VideoActivity.68
                            @Override // android.view.View.OnSystemUiVisibilityChangeListener
                            public final void onSystemUiVisibilityChange(int i) {
                                View view;
                                SystemRunnable systemRunnable;
                                VideoActivity videoActivity = VideoActivity.this;
                                VideoControl videoControl = videoActivity.M1;
                                if (videoControl != null && videoControl.s(null) && (i & 4) != 4 && (view = videoActivity.I1) != null && (systemRunnable = videoActivity.J1) != null) {
                                    view.postDelayed(systemRunnable, 800L);
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
                View a02 = a0();
                if (a02 != null) {
                    a02.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.video.VideoActivity.69
                        @Override // android.view.View.OnSystemUiVisibilityChangeListener
                        public final void onSystemUiVisibilityChange(int i) {
                            VideoActivity videoActivity = VideoActivity.this;
                            DialogCapture dialogCapture = videoActivity.V2;
                            if (dialogCapture != null) {
                                dialogCapture.r();
                                return;
                            }
                            if ((i & 4) == 4) {
                                if (videoActivity.w1()) {
                                    videoActivity.r0();
                                }
                            } else if (!videoActivity.w1()) {
                                videoActivity.r0();
                            }
                        }
                    });
                }
            }
        }
    }

    public final boolean z1() {
        if (this.i1 || this.R1 != null || this.S1 != null || this.K1 == null) {
            return true;
        }
        return false;
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            MyWebSafe myWebSafe;
            String str2;
            final VideoActivity videoActivity = VideoActivity.this;
            if (videoActivity.n3 == null) {
                return;
            }
            videoActivity.o3 = false;
            VideoActivity.D0(videoActivity, str);
            if (!videoActivity.W3 && !TextUtils.isEmpty(str) && !str.equals(videoActivity.X3)) {
                videoActivity.W3 = true;
                videoActivity.X3 = str;
                Handler handler = videoActivity.O0;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.41
                        @Override // java.lang.Runnable
                        public final void run() {
                            VideoActivity videoActivity2 = VideoActivity.this;
                            MainUtil.l(videoActivity2.n3);
                            videoActivity2.W3 = false;
                        }
                    });
                }
            }
            if (!videoActivity.s3 && (myWebSafe = videoActivity.n3) != null) {
                if (PrefVideo.p) {
                    str2 = "(function(){var ele=document.querySelector(\"video\");if(ele){ele.loop=true;ele.style.width='100%';ele.setAttribute('controlsList','nodownload');if(ele.paused){ele.play();}}})();";
                } else {
                    str2 = "(function(){var ele=document.querySelector(\"video\");if(ele){ele.style.width='100%';ele.setAttribute('controlsList','nodownload');if(ele.paused){ele.play();}}})();";
                }
                MainUtil.J(myWebSafe, str2, true);
            }
            VideoActivity.F0(videoActivity);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MyWebSafe myWebSafe;
            String str2;
            VideoActivity videoActivity = VideoActivity.this;
            if (videoActivity.n3 == null) {
                return;
            }
            videoActivity.o3 = true;
            VideoActivity.D0(videoActivity, str);
            if (!videoActivity.s3 && (myWebSafe = videoActivity.n3) != null) {
                if (PrefVideo.p) {
                    str2 = "(function(){var ele=document.querySelector(\"video\");if(ele){ele.loop=true;ele.style.width='100%';ele.setAttribute('controlsList','nodownload');if(ele.paused){ele.play();}}})();";
                } else {
                    str2 = "(function(){var ele=document.querySelector(\"video\");if(ele){ele.style.width='100%';ele.setAttribute('controlsList','nodownload');if(ele.paused){ele.play();}}})();";
                }
                MainUtil.J(myWebSafe, str2, true);
            }
            VideoActivity.F0(videoActivity);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final VideoActivity videoActivity = VideoActivity.this;
            videoActivity.n3 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = videoActivity.O0;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.video.VideoActivity.42
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoActivity.this.finish();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            VideoActivity videoActivity = VideoActivity.this;
            if (videoActivity.n3 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                VideoActivity.D0(videoActivity, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            VideoActivity videoActivity = VideoActivity.this;
            if (videoActivity.n3 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            VideoActivity.D0(videoActivity, str);
            VideoActivity.O0(videoActivity, str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            VideoActivity videoActivity = VideoActivity.this;
            if (videoActivity.n3 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    VideoActivity.D0(videoActivity, uri);
                    VideoActivity.O0(videoActivity, uri);
                }
            }
            return true;
        }
    }
}
