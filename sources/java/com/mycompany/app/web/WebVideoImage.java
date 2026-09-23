package com.mycompany.app.web;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.web.WebVideoFrame;

/* loaded from: classes3.dex */
public class WebVideoImage extends WebVideoFrame {
    public static final /* synthetic */ int w = 0;

    /* renamed from: c, reason: collision with root package name */
    public MainActivity f19678c;
    public final Context f;
    public ViewGroup g;
    public WebNestView h;
    public View i;
    public WebChromeClient.CustomViewCallback j;
    public WebVideoFrame.VideoFrameListener k;
    public MyButtonImage l;
    public int m;
    public long n;
    public long o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public GestureDetector t;
    public final Runnable u;
    public boolean v;

    /* renamed from: com.mycompany.app.web.WebVideoImage$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public WebVideoImage(Context context) {
        super(context);
        this.u = new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.4
            @Override // java.lang.Runnable
            public final void run() {
                WebVideoImage webVideoImage = WebVideoImage.this;
                MyButtonImage myButtonImage = webVideoImage.l;
                if (myButtonImage != null && webVideoImage.q && !myButtonImage.isPressed() && webVideoImage.l.getVisibility() == 0) {
                    webVideoImage.l.setVisibility(8);
                }
            }
        };
        this.f = context;
    }

    public static void z(WebVideoImage webVideoImage, boolean z) {
        if (webVideoImage.g != null) {
            if (z) {
                webVideoImage.o = System.currentTimeMillis();
            } else if (System.currentTimeMillis() - webVideoImage.o > 1000) {
                return;
            }
            webVideoImage.g.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.15
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoImage webVideoImage2 = WebVideoImage.this;
                    ViewGroup viewGroup = webVideoImage2.g;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.invalidate();
                    WebVideoImage.z(webVideoImage2, false);
                }
            });
        }
    }

    public final void A() {
        ViewGroup viewGroup;
        if (this.l != null && (viewGroup = this.g) != null) {
            Runnable runnable = this.u;
            viewGroup.removeCallbacks(runnable);
            this.g.postDelayed(runnable, 3000L);
        }
    }

    public final void B(boolean z) {
        if (this.g != null) {
            if (z) {
                this.p = false;
                this.n = System.currentTimeMillis();
                this.g.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.13
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebVideoImage webVideoImage = WebVideoImage.this;
                        if (webVideoImage.p) {
                            return;
                        }
                        WebVideoImage.z(webVideoImage, true);
                    }
                }, 3000L);
            } else if (System.currentTimeMillis() - this.n > 1000) {
                return;
            }
            this.g.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.14
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoImage webVideoImage = WebVideoImage.this;
                    ViewGroup viewGroup = webVideoImage.g;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.invalidate();
                    webVideoImage.B(false);
                }
            });
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void a(String str, boolean z, WebVideoFrame.VideoFrameListener videoFrameListener) {
        this.k = videoFrameListener;
        setVideoDown(z);
        ViewGroup viewGroup = this.g;
        if (viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.5
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v2, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final WebVideoImage webVideoImage = WebVideoImage.this;
                if (webVideoImage.f19678c == null) {
                    return;
                }
                webVideoImage.setBackgroundColor(-16777216);
                webVideoImage.setOnClickListener(new Object());
                MainApp.J(webVideoImage.f, new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        final WebVideoImage webVideoImage2 = WebVideoImage.this;
                        MainActivity mainActivity = webVideoImage2.f19678c;
                        if (mainActivity != null) {
                            if (webVideoImage2.m == 6) {
                                MainUtil.B7(mainActivity, 4);
                            }
                            ViewGroup viewGroup2 = webVideoImage2.g;
                            if (viewGroup2 == null) {
                                return;
                            }
                            viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.8
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final WebVideoImage webVideoImage3 = WebVideoImage.this;
                                    if (webVideoImage3.h != null) {
                                        if (webVideoImage3.m == 6) {
                                            webVideoImage3.B(true);
                                        } else if (MainUtil.j5() && MainApp.L1) {
                                            String url = webVideoImage3.h.getUrl();
                                            MainUtil.i7(webVideoImage3.h, url, MainUtil.J1(url, true), false);
                                        }
                                        ViewGroup viewGroup3 = webVideoImage3.g;
                                        if (viewGroup3 == null) {
                                            return;
                                        }
                                        viewGroup3.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.9
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                final WebVideoImage webVideoImage4 = WebVideoImage.this;
                                                MainActivity mainActivity2 = webVideoImage4.f19678c;
                                                if (mainActivity2 != null) {
                                                    mainActivity2.s0(webVideoImage4, true);
                                                    ViewGroup viewGroup4 = webVideoImage4.g;
                                                    if (viewGroup4 == null) {
                                                        return;
                                                    }
                                                    viewGroup4.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.10
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            final WebVideoImage webVideoImage5 = WebVideoImage.this;
                                                            if (webVideoImage5.m == 4 && webVideoImage5.k != null) {
                                                                if (webVideoImage5.l == null && webVideoImage5.f != null) {
                                                                    MyButtonImage myButtonImage = new MyButtonImage(webVideoImage5.f);
                                                                    webVideoImage5.l = myButtonImage;
                                                                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                                                    webVideoImage5.l.k(-1593835520, -1586137739);
                                                                    webVideoImage5.l.n(MainApp.j1, MainApp.k1);
                                                                    webVideoImage5.l.setImageResource(R.drawable.outline_download_white_24);
                                                                    if (!webVideoImage5.q) {
                                                                        webVideoImage5.l.setVisibility(8);
                                                                    } else {
                                                                        webVideoImage5.l.setVisibility(0);
                                                                        webVideoImage5.A();
                                                                    }
                                                                    webVideoImage5.l.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.web.WebVideoImage.1
                                                                        @Override // android.view.View.OnTouchListener
                                                                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                                            int actionMasked = motionEvent.getActionMasked();
                                                                            WebVideoImage webVideoImage6 = WebVideoImage.this;
                                                                            if (actionMasked == 0) {
                                                                                ViewGroup viewGroup5 = webVideoImage6.g;
                                                                                if (viewGroup5 != null) {
                                                                                    viewGroup5.removeCallbacks(webVideoImage6.u);
                                                                                    return false;
                                                                                }
                                                                                return false;
                                                                            }
                                                                            if (actionMasked == 1 || actionMasked == 3) {
                                                                                int i = WebVideoImage.w;
                                                                                webVideoImage6.A();
                                                                                return false;
                                                                            }
                                                                            return false;
                                                                        }
                                                                    });
                                                                    webVideoImage5.l.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoImage.2
                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            final WebVideoImage webVideoImage6 = WebVideoImage.this;
                                                                            if (!webVideoImage6.s) {
                                                                                webVideoImage6.s = true;
                                                                                webVideoImage6.A();
                                                                                WebVideoFrame.VideoFrameListener videoFrameListener2 = webVideoImage6.k;
                                                                                if (videoFrameListener2 != null) {
                                                                                    videoFrameListener2.a();
                                                                                }
                                                                                ViewGroup viewGroup5 = webVideoImage6.g;
                                                                                if (viewGroup5 == null) {
                                                                                    return;
                                                                                }
                                                                                viewGroup5.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.12
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        WebVideoImage.this.s = false;
                                                                                    }
                                                                                }, 100L);
                                                                            }
                                                                        }
                                                                    });
                                                                    webVideoImage5.t = new GestureDetector(webVideoImage5.f, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.web.WebVideoImage.3
                                                                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                                                                        public final boolean onSingleTapUp(MotionEvent motionEvent) {
                                                                            WebVideoImage webVideoImage6 = WebVideoImage.this;
                                                                            MyButtonImage myButtonImage2 = webVideoImage6.l;
                                                                            if (myButtonImage2 == null || !webVideoImage6.q || myButtonImage2.isPressed()) {
                                                                                return false;
                                                                            }
                                                                            if (webVideoImage6.l.getVisibility() == 0) {
                                                                                webVideoImage6.l.setVisibility(8);
                                                                            } else {
                                                                                webVideoImage6.l.setVisibility(0);
                                                                                webVideoImage6.A();
                                                                            }
                                                                            return false;
                                                                        }
                                                                    });
                                                                    int i = MainApp.g1;
                                                                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                                                                    layoutParams.gravity = 8388693;
                                                                    layoutParams.bottomMargin = (int) MainUtil.G(webVideoImage5.f, 120.0f);
                                                                    layoutParams.setMarginEnd(MainApp.G1);
                                                                    webVideoImage5.addView(webVideoImage5.l, layoutParams);
                                                                }
                                                                webVideoImage5.r = false;
                                                                return;
                                                            }
                                                            webVideoImage5.r = false;
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                });
            }
        });
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void b(MainActivity mainActivity, ViewGroup viewGroup, WebNestView webNestView, String str, int i, View view, WebChromeClient.CustomViewCallback customViewCallback) {
        if (mainActivity != null && viewGroup != null && webNestView != null) {
            this.r = true;
            this.f19678c = mainActivity;
            this.g = viewGroup;
            this.h = webNestView;
            this.m = i;
            this.i = view;
            this.j = customViewCallback;
            viewGroup.addView(this, -1, -1);
            addView(this.i, -1, -1);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void c() {
        if (true != this.q) {
            this.v = true;
            ViewGroup viewGroup = this.g;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoImage.11
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoImage webVideoImage = WebVideoImage.this;
                    webVideoImage.setVideoDown(webVideoImage.v);
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1 && actionMasked != 3) {
            this.p = true;
        } else {
            B(true);
        }
        GestureDetector gestureDetector = this.t;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public int getVideoType() {
        return this.m;
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void i() {
        this.r = false;
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final boolean l() {
        return this.r;
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public void setVideoDown(boolean z) {
        this.q = z;
        MyButtonImage myButtonImage = this.l;
        if (myButtonImage == null) {
            return;
        }
        if (!z) {
            myButtonImage.setVisibility(8);
        } else {
            myButtonImage.setVisibility(0);
            A();
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void t() {
        MainActivity mainActivity = this.f19678c;
        if (mainActivity != null) {
            mainActivity.s0(this, false);
            this.f19678c = null;
        }
        MyButtonImage myButtonImage = this.l;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.l = null;
        }
        this.h = null;
        this.k = null;
        ViewGroup viewGroup = this.g;
        if (viewGroup != null) {
            viewGroup.removeView(this);
            this.g = null;
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void u() {
        WebChromeClient.CustomViewCallback customViewCallback = this.j;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.j = null;
        }
        View view = this.i;
        if (view != null) {
            removeView(view);
            this.i = null;
        }
        this.t = null;
    }
}
