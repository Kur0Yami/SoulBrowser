package com.mycompany.app.web;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.mycompany.app.db.book.DbTabState;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MainWebDestroy;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.quick.QuickView;
import com.mycompany.app.web.WebTabAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class WebNestFrame extends FrameLayout {
    public static final /* synthetic */ int v0 = 0;
    public float A;
    public float B;
    public float C;
    public float D;
    public int E;
    public ValueAnimator F;
    public float G;
    public ValueAnimator H;
    public boolean I;
    public boolean J;
    public int K;
    public Paint L;
    public Paint M;
    public int N;
    public int O;
    public boolean P;
    public int Q;
    public boolean R;
    public Bitmap S;
    public Paint T;
    public boolean U;
    public ExecutorService V;
    public MainWebDestroy W;
    public boolean a0;
    public float b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19303c;
    public boolean c0;
    public final Runnable d0;
    public int e0;
    public Handler f;
    public boolean f0;
    public final boolean g;
    public float g0;
    public WebFrameListener h;
    public boolean h0;
    public long i;
    public final Runnable i0;
    public boolean j;
    public int j0;
    public boolean k;
    public boolean k0;
    public boolean l;
    public float l0;
    public WebTabAdapter.WebTabItem m;
    public boolean m0;
    public List n;
    public final Runnable n0;
    public List o;
    public int o0;
    public int p;
    public float p0;
    public boolean q;
    public boolean q0;
    public boolean r;
    public final Runnable r0;
    public boolean s;
    public int s0;
    public boolean t;
    public boolean t0;
    public boolean u;
    public final Runnable u0;
    public ValueAnimator v;
    public boolean w;
    public float x;
    public float y;
    public ValueAnimator z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebNestFrame$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebNestFrame webNestFrame = WebNestFrame.this;
            if (!webNestFrame.f19303c) {
                return;
            }
            if (webNestFrame.getPaddingBottom() == 0) {
                webNestFrame.setPadding(0, 0, 0, 1);
            } else {
                webNestFrame.setPadding(0, 0, 0, 0);
            }
            webNestFrame.a0 = false;
        }
    }

    /* loaded from: classes3.dex */
    public static class PageItem {

        /* renamed from: a, reason: collision with root package name */
        public long f19336a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public long f19337c;
        public String d;
        public String e;
        public boolean f;
        public int g;
        public int h;
        public WebNestView i;
    }

    /* loaded from: classes3.dex */
    public interface WebFrameListener {
        void a(int i, boolean z);

        void b(WebNestView webNestView, int i);

        void c(int i, boolean z);

        void d();

        void e(int i, boolean z, boolean z2);
    }

    public WebNestFrame(Context context) {
        super(context);
        this.d0 = new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.13
            @Override // java.lang.Runnable
            public final void run() {
                WebNestFrame webNestFrame = WebNestFrame.this;
                webNestFrame.c0 = false;
                if (webNestFrame.v != null) {
                    webNestFrame.setValAnimAdd(webNestFrame.b0);
                }
            }
        };
        this.i0 = new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.17
            @Override // java.lang.Runnable
            public final void run() {
                WebNestFrame webNestFrame = WebNestFrame.this;
                webNestFrame.h0 = false;
                if (webNestFrame.z != null) {
                    webNestFrame.setValAnimFake(webNestFrame.g0);
                }
            }
        };
        this.n0 = new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.21
            @Override // java.lang.Runnable
            public final void run() {
                WebNestFrame webNestFrame = WebNestFrame.this;
                webNestFrame.m0 = false;
                if (webNestFrame.F != null) {
                    webNestFrame.setValAnimTabX(webNestFrame.l0);
                }
            }
        };
        this.r0 = new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.25
            @Override // java.lang.Runnable
            public final void run() {
                WebNestFrame webNestFrame = WebNestFrame.this;
                webNestFrame.q0 = false;
                if (webNestFrame.F != null) {
                    webNestFrame.setValAnimTabY(webNestFrame.p0);
                }
            }
        };
        this.u0 = new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.29
            @Override // java.lang.Runnable
            public final void run() {
                WebNestFrame webNestFrame = WebNestFrame.this;
                webNestFrame.t0 = false;
                if (webNestFrame.H != null) {
                    webNestFrame.setValAnimBack(webNestFrame.s0);
                }
            }
        };
        this.f19303c = true;
        this.f = new Handler(Looper.getMainLooper());
        this.g = MainUtil.O5(context);
        this.R = PrefZtwo.E;
    }

    public static void K(PageItem pageItem, WebNestView webNestView) {
        if (pageItem != null && webNestView != null) {
            String pageUrl = webNestView.getPageUrl();
            pageItem.b = webNestView.z0;
            pageItem.f = webNestView.C;
            pageItem.g = webNestView.getThemeColor();
            pageItem.h = webNestView.getThemeLight();
            pageItem.i = null;
            if (pageItem.b) {
                pageItem.f19337c = webNestView.getBlankId();
                pageItem.d = pageUrl;
                pageItem.e = null;
            } else {
                pageItem.f19337c = 0L;
                pageItem.d = null;
                pageItem.e = pageUrl;
            }
        }
    }

    public static ArrayList a(WebNestFrame webNestFrame, int i) {
        int size;
        WebNestView webNestView;
        List list = webNestFrame.o;
        ArrayList arrayList = null;
        if (list == null || (size = list.size()) <= i) {
            return null;
        }
        webNestFrame.o = list.subList(0, i);
        if (webNestFrame.p >= i) {
            webNestFrame.p = i - 1;
        }
        webNestFrame.r = webNestFrame.q;
        while (i < size) {
            PageItem pageItem = (PageItem) list.get(i);
            if (pageItem != null && (webNestView = pageItem.i) != null) {
                webNestView.setDetached(true);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(webNestView);
            }
            i++;
        }
        return arrayList;
    }

    public static ArrayList b(WebNestFrame webNestFrame) {
        List list;
        WebNestView webNestView;
        WebNestView webNestView2;
        if (PrefZtwo.H >= 3 && (list = webNestFrame.o) != null) {
            try {
                int size = list.size();
                if (size > 100) {
                    int i = webNestFrame.p - 50;
                    if (i < 0) {
                        i = 0;
                    }
                    int i2 = i + 99;
                    if (i2 >= size) {
                        i2 = size - 1;
                        i = size - 100;
                    }
                    int i3 = i2 + 1;
                    ArrayList arrayList = null;
                    if (i > 0) {
                        for (int i4 = 0; i4 < i; i4++) {
                            PageItem pageItem = (PageItem) list.get(i4);
                            if (pageItem != null && (webNestView2 = pageItem.i) != null) {
                                webNestView2.setDetached(true);
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(webNestView2);
                            }
                        }
                    }
                    if (i3 < size) {
                        for (int i5 = i3; i5 < size; i5++) {
                            PageItem pageItem2 = (PageItem) list.get(i5);
                            if (pageItem2 != null && (webNestView = pageItem2.i) != null) {
                                webNestView.setDetached(true);
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(webNestView);
                            }
                        }
                    }
                    webNestFrame.o = list.subList(i, i3);
                    webNestFrame.p -= i;
                    webNestFrame.r = webNestFrame.q;
                    return arrayList;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private int getBackColor() {
        if (MainUtil.C5(this.P)) {
            return 16777216;
        }
        if (MainApp.L1) {
            return -16777216;
        }
        return -1;
    }

    private long getBlankTime() {
        List list;
        if (PrefZtwo.H < 3 || (list = this.o) == null || list.size() <= PrefZtwo.H) {
            return 0L;
        }
        try {
            List list2 = this.n;
            if (list2 != null && !list2.isEmpty()) {
                return ((Long) this.n.get(0)).longValue();
            }
        } catch (Exception unused) {
        }
        return 0L;
    }

    private int getWallColor() {
        if (MainUtil.C5(this.P)) {
            return 0;
        }
        if (MainApp.L1) {
            return -16777216;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBlankOld(long j) {
        List list;
        PageItem pageItem;
        WebNestView webNestView;
        if (j != 0 && (list = this.o) != null) {
            try {
                int i = this.p;
                int i2 = i - 2;
                int i3 = i + 2;
                int size = list.size();
                List<WebView> list2 = null;
                for (int i4 = 0; i4 < size; i4++) {
                    if ((i4 <= i2 || i4 >= i3) && (pageItem = (PageItem) list.get(i4)) != null && pageItem.f19336a < j && (webNestView = pageItem.i) != null) {
                        K(pageItem, webNestView);
                        webNestView.setDetached(true);
                        if (list2 == null) {
                            list2 = new ArrayList<>();
                        }
                        list2.add(webNestView);
                    }
                }
                setDelList(list2);
            } catch (Exception unused) {
            }
        }
    }

    private void setBlankTime(int i) {
        PageItem y = y(i);
        if (y == null) {
            this.n = null;
            return;
        }
        try {
            if (PrefZtwo.H < 3) {
                y.f19336a = System.currentTimeMillis();
                this.n = null;
                return;
            }
            List list = this.n;
            if (list == null) {
                this.n = new ArrayList();
            } else {
                long j = y.f19336a;
                if (j != 0) {
                    list.remove(Long.valueOf(j));
                }
            }
            long currentTimeMillis = System.currentTimeMillis();
            y.f19336a = currentTimeMillis;
            this.n.add(Long.valueOf(currentTimeMillis));
            int min = Math.min(PrefZtwo.H, this.o.size());
            int size = this.n.size();
            if (size > min) {
                this.n = this.n.subList(size - min, size);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDelList(List<WebView> list) {
        if (list != null && !list.isEmpty()) {
            if (this.W == null) {
                this.W = MainApp.w(getContext());
            }
            MainWebDestroy mainWebDestroy = this.W;
            if (mainWebDestroy != null) {
                mainWebDestroy.a(list);
            }
        }
    }

    private void setDelView(WebView webView) {
        if (webView != null) {
            if (this.W == null) {
                this.W = MainApp.w(getContext());
            }
            MainWebDestroy mainWebDestroy = this.W;
            if (mainWebDestroy != null) {
                mainWebDestroy.b(webView);
            }
        }
    }

    private void setDetached(boolean z) {
        WebNestView webNestView;
        if (this.k != z) {
            this.k = z;
            List<PageItem> list = this.o;
            if (list != null && !list.isEmpty()) {
                for (PageItem pageItem : list) {
                    if (pageItem != null && (webNestView = pageItem.i) != null) {
                        webNestView.setDetached(z);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimAdd(float f) {
        if (F()) {
            return;
        }
        setTranslationX(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimBack(int i) {
        int i2;
        int i3 = MainApp.g1;
        if (i < i3) {
            i2 = -i;
        } else {
            i2 = -((i3 * 2) - i);
        }
        float f = i2;
        this.G = f;
        Q(f, 3);
        if (F()) {
            return;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimFake(float f) {
        this.x = f;
        Q(f, 0);
        if (F()) {
            return;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimTabX(float f) {
        this.A = f;
        Q(f, 1);
        if (F()) {
            return;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimTabY(float f) {
        this.B = f;
        Q(f, 2);
        if (F()) {
            return;
        }
        invalidate();
    }

    public final void A() {
        G();
        if (Float.compare(this.x, 0.0f) == 0) {
            return;
        }
        this.x = 0.0f;
        invalidate();
    }

    public final void B() {
        if (this.L == null) {
            Paint paint = new Paint();
            this.L = paint;
            paint.setStyle(Paint.Style.FILL);
        }
        if (this.M == null) {
            Paint paint2 = new Paint();
            this.M = paint2;
            paint2.setStyle(Paint.Style.FILL);
        }
    }

    public final void C(PageItem pageItem, WebNestView webNestView, boolean z) {
        WebNestView webNestView2;
        if (pageItem == null) {
            return;
        }
        if (z && (webNestView2 = pageItem.i) != null && (webNestView == null || !webNestView.equals(webNestView2))) {
            webNestView2.setDetached(true);
            setDelView(webNestView2);
        }
        pageItem.b = false;
        pageItem.f19337c = 0L;
        pageItem.d = null;
        pageItem.e = null;
        pageItem.f = false;
        pageItem.g = 0;
        pageItem.h = 0;
        pageItem.i = webNestView;
    }

    public final void D() {
        G();
        if (Float.compare(this.x, 0.0f) == 0 && Float.compare(this.A, 0.0f) == 0 && Float.compare(this.B, 0.0f) == 0 && Float.compare(this.G, 0.0f) == 0) {
            return;
        }
        this.x = 0.0f;
        this.A = 0.0f;
        this.B = 0.0f;
        this.G = 0.0f;
        this.K = 0;
        invalidate();
    }

    public final void E(boolean z) {
        this.P = z;
        this.Q = getBackColor();
    }

    public final boolean F() {
        WebNestView webNestView;
        if (!this.J) {
            List<PageItem> list = this.o;
            if (list != null && !list.isEmpty()) {
                for (PageItem pageItem : list) {
                    if (pageItem != null && (webNestView = pageItem.i) != null && (webNestView.H0 || webNestView.I0)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final void G() {
        this.S = null;
        this.T = null;
    }

    public final void H(Runnable runnable) {
        ExecutorService executorService = this.V;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(getContext());
            if (executorService == null) {
                return;
            } else {
                this.V = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final void I() {
        if (this.v == null) {
            int width = getWidth();
            if (width == 0) {
                Object parent = getParent();
                if (parent != null) {
                    width = ((View) parent).getWidth();
                }
                if (width == 0) {
                    J();
                    setTranslationX(0.0f);
                    r(1, false);
                    return;
                }
            }
            if (this.g) {
                width = -width;
            }
            float f = width;
            this.b0 = f;
            this.c0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.0f);
            this.v = ofFloat;
            ofFloat.setDuration(300L);
            this.v.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.web.WebNestFrame.10
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    WebNestFrame webNestFrame = WebNestFrame.this;
                    if (webNestFrame.v == null) {
                        webNestFrame.setTranslationX(0.0f);
                        return;
                    }
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (webNestFrame.v != null) {
                        webNestFrame.b0 = floatValue;
                        if (webNestFrame.F() || webNestFrame.c0) {
                            return;
                        }
                        webNestFrame.c0 = true;
                        MainApp.N(webNestFrame.getContext(), webNestFrame.d0);
                    }
                }
            });
            this.v.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.web.WebNestFrame.11
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    WebNestFrame webNestFrame = WebNestFrame.this;
                    if (webNestFrame.v == null) {
                        return;
                    }
                    webNestFrame.v = null;
                    webNestFrame.setTranslationX(0.0f);
                    webNestFrame.r(1, false);
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final WebNestFrame webNestFrame = WebNestFrame.this;
                    if (webNestFrame.v == null) {
                        return;
                    }
                    MainApp.N(webNestFrame.getContext(), new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.14
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebNestFrame webNestFrame2 = WebNestFrame.this;
                            if (webNestFrame2.v == null) {
                                return;
                            }
                            webNestFrame2.v = null;
                            webNestFrame2.setTranslationX(0.0f);
                            webNestFrame2.r(1, false);
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
            setTranslationX(f);
            Handler handler = this.f;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.12
                @Override // java.lang.Runnable
                public final void run() {
                    int i = WebNestFrame.v0;
                    WebNestFrame webNestFrame = WebNestFrame.this;
                    webNestFrame.J();
                    ValueAnimator valueAnimator = webNestFrame.v;
                    if (valueAnimator == null) {
                        webNestFrame.setTranslationX(0.0f);
                        webNestFrame.r(1, false);
                    } else {
                        valueAnimator.start();
                    }
                }
            });
        }
    }

    public final void J() {
        this.u = false;
        if (getVisibility() == 4) {
            this.I = true;
            super.setVisibility(0);
        }
    }

    public final void L(long j, boolean z) {
        List list;
        PageItem pageItem;
        WebNestView webNestView;
        if (j != 0 && (list = this.o) != null) {
            try {
                int size = list.size();
                List<WebView> list2 = null;
                for (int i = 0; i < size; i++) {
                    if ((!z || i != this.p) && (pageItem = (PageItem) list.get(i)) != null && pageItem.f19336a < j && (webNestView = pageItem.i) != null) {
                        K(pageItem, webNestView);
                        webNestView.setDetached(true);
                        if (list2 == null) {
                            list2 = new ArrayList<>();
                        }
                        list2.add(webNestView);
                    }
                }
                setDelList(list2);
            } catch (Exception unused) {
            }
        }
    }

    public final boolean M(int i) {
        int i2;
        Object parent;
        if ((i == 2 || i == 3) && this.F == null) {
            l();
            int height = getHeight();
            if (height != 0 || ((parent = getParent()) != null && (height = ((View) parent).getHeight()) != 0)) {
                B();
                if (i == 3) {
                    i2 = 0;
                } else {
                    i2 = height;
                }
                float f = i2;
                if (Float.compare(this.B, f) == 0) {
                    this.E = 0;
                    r(i, false);
                    return false;
                }
                this.E = i;
                this.D = f;
                this.o0 = i;
                float f2 = this.B;
                this.p0 = f2;
                this.q0 = false;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
                this.F = ofFloat;
                ofFloat.setDuration((Math.abs(f - this.B) / height) * 300.0f);
                this.F.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.web.WebNestFrame.23
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        WebNestFrame webNestFrame = WebNestFrame.this;
                        if (webNestFrame.F != null) {
                            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            if (webNestFrame.F != null) {
                                webNestFrame.p0 = floatValue;
                                if (webNestFrame.F() || webNestFrame.q0) {
                                    return;
                                }
                                webNestFrame.q0 = true;
                                MainApp.N(webNestFrame.getContext(), webNestFrame.r0);
                            }
                        }
                    }
                });
                this.F.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.web.WebNestFrame.24
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        WebNestFrame webNestFrame = WebNestFrame.this;
                        if (webNestFrame.F == null) {
                            return;
                        }
                        webNestFrame.F = null;
                        webNestFrame.E = 0;
                        webNestFrame.r(webNestFrame.o0, false);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final WebNestFrame webNestFrame = WebNestFrame.this;
                        webNestFrame.E = 0;
                        if (webNestFrame.F == null) {
                            return;
                        }
                        MainApp.N(webNestFrame.getContext(), new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.26
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebNestFrame webNestFrame2 = WebNestFrame.this;
                                if (webNestFrame2.F == null) {
                                    return;
                                }
                                webNestFrame2.F = null;
                                float f3 = webNestFrame2.D;
                                webNestFrame2.B = f3;
                                webNestFrame2.Q(f3, 2);
                                webNestFrame2.invalidate();
                                webNestFrame2.r(webNestFrame2.o0, false);
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
                this.F.start();
                return true;
            }
        }
        return false;
    }

    public final boolean N(int i, boolean z) {
        int i2;
        Object parent;
        if (i != 0 && this.z == null) {
            l();
            int width = getWidth();
            if (width != 0 || ((parent = getParent()) != null && (width = ((View) parent).getWidth()) != 0)) {
                B();
                boolean z2 = this.g;
                if (i == 1) {
                    if (z2) {
                        this.x = 0.0f;
                    } else {
                        this.x = width;
                    }
                    Q(this.x, 0);
                }
                if (!z2 ? !z ? i != 3 : i == 3 : !z ? i == 3 : i != 3) {
                    i2 = 0;
                } else {
                    i2 = width;
                }
                float f = i2;
                if (Float.compare(this.x, f) == 0) {
                    this.E = 0;
                    s(i, z);
                    return false;
                }
                this.E = i;
                this.y = f;
                this.e0 = i;
                this.f0 = z;
                float f2 = this.x;
                this.g0 = f2;
                this.h0 = false;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
                this.z = ofFloat;
                ofFloat.setDuration((Math.abs(f - this.x) / width) * 300.0f);
                this.z.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.web.WebNestFrame.15
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        WebNestFrame webNestFrame = WebNestFrame.this;
                        if (webNestFrame.z != null) {
                            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            if (webNestFrame.z != null) {
                                webNestFrame.g0 = floatValue;
                                if (webNestFrame.F() || webNestFrame.h0) {
                                    return;
                                }
                                webNestFrame.h0 = true;
                                MainApp.N(webNestFrame.getContext(), webNestFrame.i0);
                            }
                        }
                    }
                });
                this.z.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.web.WebNestFrame.16
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        WebNestFrame webNestFrame = WebNestFrame.this;
                        if (webNestFrame.z == null) {
                            return;
                        }
                        webNestFrame.z = null;
                        webNestFrame.E = 0;
                        webNestFrame.s(webNestFrame.e0, webNestFrame.f0);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final WebNestFrame webNestFrame = WebNestFrame.this;
                        webNestFrame.E = 0;
                        if (webNestFrame.z == null) {
                            return;
                        }
                        MainApp.N(webNestFrame.getContext(), new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.18
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebNestFrame webNestFrame2 = WebNestFrame.this;
                                if (webNestFrame2.z == null) {
                                    return;
                                }
                                webNestFrame2.z = null;
                                float f3 = webNestFrame2.y;
                                webNestFrame2.x = f3;
                                webNestFrame2.Q(f3, 0);
                                webNestFrame2.invalidate();
                                webNestFrame2.s(webNestFrame2.e0, webNestFrame2.f0);
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
                return true;
            }
        }
        return false;
    }

    public final void O(float f, boolean z) {
        boolean z2;
        this.w = z;
        if (!this.I) {
            z2 = true;
            this.I = true;
        } else {
            z2 = false;
        }
        if (this.g) {
            if (f <= 0.0f) {
                f = 0.1f;
            } else if (f >= getWidth()) {
                f = getWidth() - 0.1f;
            }
        }
        if (Float.compare(this.x, f) == 0) {
            if (z2 && MainUtil.C5(this.P)) {
                invalidate();
                return;
            }
            return;
        }
        this.x = f;
        B();
        Q(this.x, 0);
        invalidate();
    }

    public final void P(WebNestView webNestView, boolean z) {
        WebNestView webNestView2;
        if (webNestView != null) {
            if (z) {
                MainUtil.F(webNestView, false);
                MainApp p = MainApp.p(getContext());
                if (p != null) {
                    p.e(1);
                    p.e(0);
                }
                if (!MainUtil.isUiForeground(getContext())) {
                    MainUtil.quietKillProcess();
                    return;
                }
                WebFrameListener webFrameListener = this.h;
                if (webFrameListener != null) {
                    webFrameListener.d();
                    return;
                } else {
                    if (!this.l) {
                        this.l = true;
                        H(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainUtil.c7(WebNestFrame.this.getContext(), null, false);
                            }
                        });
                        return;
                    }
                    return;
                }
            }
            List list = this.o;
            PageItem pageItem = null;
            if (list != null && !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    PageItem pageItem2 = (PageItem) it.next();
                    if (pageItem2 != null && (webNestView2 = pageItem2.i) != null && webNestView2.equals(webNestView)) {
                        pageItem = pageItem2;
                        break;
                    }
                }
            }
            K(pageItem, webNestView);
            int indexOfChild = indexOfChild(webNestView);
            MainUtil.F(webNestView, false);
            MainApp p2 = MainApp.p(getContext());
            if (p2 != null) {
                p2.e(1);
                p2.e(0);
            }
            WebFrameListener webFrameListener2 = this.h;
            if (webFrameListener2 != null) {
                webFrameListener2.b(webNestView, indexOfChild);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x002c, code lost:
    
        if (r2.g == false) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Q(float r3, int r4) {
        /*
            r2 = this;
            android.graphics.Paint r0 = r2.L
            if (r0 == 0) goto L5a
            android.graphics.Paint r0 = r2.M
            if (r0 != 0) goto L9
            goto L5a
        L9:
            r0 = 2
            if (r4 != r0) goto L11
            int r1 = r2.getHeight()
            goto L15
        L11:
            int r1 = r2.getWidth()
        L15:
            if (r1 != 0) goto L1b
            r3 = 0
            r2.K = r3
            return
        L1b:
            if (r4 != r0) goto L21
        L1d:
            float r4 = (float) r1
        L1e:
            float r3 = r4 - r3
            goto L2f
        L21:
            r0 = 3
            if (r4 != r0) goto L2a
            float r4 = (float) r1
            float r3 = java.lang.Math.abs(r3)
            goto L1e
        L2a:
            boolean r4 = r2.g
            if (r4 != 0) goto L2f
            goto L1d
        L2f:
            float r4 = (float) r1
            float r3 = r3 / r4
            r4 = 1126236160(0x43210000, float:161.0)
            float r3 = r3 * r4
            int r3 = (int) r3
            r2.K = r3
            if (r3 != 0) goto L3a
            goto L5a
        L3a:
            int r3 = r2.getWallColor()
            int r4 = r2.K
            int r4 = r4 << 24
            int r0 = r2.N
            if (r0 == r3) goto L4f
            r2.N = r3
            if (r3 == 0) goto L4f
            android.graphics.Paint r0 = r2.L
            r0.setColor(r3)
        L4f:
            int r3 = r2.O
            if (r3 == r4) goto L5a
            r2.O = r4
            android.graphics.Paint r3 = r2.M
            r3.setColor(r4)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebNestFrame.Q(float, int):void");
    }

    public final void R(WebNestView webNestView, ArrayList arrayList) {
        PageItem y;
        if (!arrayList.isEmpty() && (y = y(this.p)) != null && webNestView.equals(y.i)) {
            for (int size = arrayList.size() - 1; size > -1; size--) {
                PageItem pageItem = (PageItem) arrayList.get(size);
                if (pageItem != null && "sb_curr_page".equals(pageItem.e)) {
                    C(pageItem, webNestView, true);
                    this.o = arrayList;
                    this.p = size;
                    this.q = true;
                    setBlankTime(size);
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f19303c && !this.k) {
            this.J = true;
            if (this.L != null && this.M != null) {
                if (this.x > 0.0f) {
                    int i = this.Q;
                    if (i != 0) {
                        canvas.drawColor(i);
                    }
                    super.dispatchDraw(canvas);
                    if (this.K == 0) {
                        this.J = false;
                        return;
                    }
                    int width = getWidth();
                    if (width != 0) {
                        float f = width;
                        if (this.x < f) {
                            int height = getHeight();
                            if (this.g) {
                                float f2 = height;
                                canvas.drawRect(this.x, 0.0f, f, f2, this.M);
                                if (this.N != 0) {
                                    canvas.drawRect(0.0f, 0.0f, this.x, f2, this.L);
                                }
                            } else {
                                float f3 = height;
                                canvas.drawRect(0.0f, 0.0f, this.x, f3, this.M);
                                if (this.N != 0) {
                                    canvas.drawRect(this.x, 0.0f, f, f3, this.L);
                                }
                            }
                            q(canvas);
                            this.J = false;
                            return;
                        }
                    }
                    this.J = false;
                    return;
                }
                if (this.A > 0.0f) {
                    if (this.E == 1) {
                        int i2 = this.Q;
                        if (i2 != 0) {
                            canvas.drawColor(i2);
                        }
                        super.dispatchDraw(canvas);
                        if (this.K == 0) {
                            this.J = false;
                            return;
                        }
                        int width2 = getWidth();
                        if (width2 != 0) {
                            float f4 = width2;
                            if (this.A < f4) {
                                int height2 = getHeight();
                                if (this.g) {
                                    float f5 = height2;
                                    canvas.drawRect(this.A, 0.0f, f4, f5, this.M);
                                    if (this.N != 0) {
                                        canvas.drawRect(0.0f, 0.0f, this.A, f5, this.L);
                                    }
                                } else {
                                    float f6 = height2;
                                    canvas.drawRect(0.0f, 0.0f, this.A, f6, this.M);
                                    if (this.N != 0) {
                                        canvas.drawRect(this.A, 0.0f, f4, f6, this.L);
                                    }
                                }
                                q(canvas);
                            }
                        }
                        this.J = false;
                        return;
                    }
                    if (this.K == 0) {
                        this.J = false;
                        return;
                    }
                    int width3 = getWidth();
                    if (width3 != 0) {
                        float f7 = width3;
                        if (this.A < f7) {
                            int height3 = getHeight();
                            if (this.g) {
                                if (this.N != 0) {
                                    canvas.drawRect(0.0f, 0.0f, this.A, height3, this.L);
                                }
                                q(canvas);
                                float f8 = this.A - f7;
                                canvas.translate(f8, 0.0f);
                                super.dispatchDraw(canvas);
                                canvas.translate(-f8, 0.0f);
                                canvas.drawRect(this.A, 0.0f, f7, height3, this.M);
                            } else {
                                if (this.N != 0) {
                                    canvas.drawRect(this.A, 0.0f, f7, height3, this.L);
                                }
                                q(canvas);
                                float f9 = this.A;
                                canvas.translate(f9, 0.0f);
                                super.dispatchDraw(canvas);
                                canvas.translate(-f9, 0.0f);
                                canvas.drawRect(0.0f, 0.0f, this.A, height3, this.M);
                            }
                        }
                    }
                    this.J = false;
                    return;
                    this.J = false;
                    return;
                }
                if (this.B > 0.0f) {
                    if (this.K == 0) {
                        this.J = false;
                        return;
                    }
                    int height4 = getHeight();
                    if (height4 != 0) {
                        float f10 = height4;
                        if (this.B < f10) {
                            int width4 = getWidth();
                            if (this.N != 0) {
                                canvas.drawRect(0.0f, this.B, width4, f10, this.L);
                            }
                            q(canvas);
                            float f11 = this.B;
                            canvas.translate(0.0f, f11);
                            super.dispatchDraw(canvas);
                            canvas.translate(0.0f, -f11);
                            canvas.drawRect(0.0f, 0.0f, width4, this.B, this.M);
                            this.J = false;
                            return;
                        }
                    }
                    this.J = false;
                    return;
                }
                float f12 = this.G;
                if (f12 <= 0.0f && f12 >= 0.0f) {
                    int i3 = this.Q;
                    if (i3 != 0) {
                        canvas.drawColor(i3);
                    }
                    if (this.I) {
                        q(canvas);
                    } else {
                        G();
                    }
                    super.dispatchDraw(canvas);
                    this.J = false;
                    return;
                }
                if (this.K == 0) {
                    this.J = false;
                    return;
                }
                int width5 = getWidth();
                if (width5 != 0) {
                    float f13 = this.G;
                    float f14 = width5;
                    if (f13 < f14 && f13 > (-width5)) {
                        q(canvas);
                        float f15 = this.G;
                        if (this.g) {
                            f15 = -f15;
                        }
                        canvas.translate(f15, 0.0f);
                        int i4 = this.N;
                        if (i4 != 0) {
                            canvas.drawColor(i4);
                        }
                        super.dispatchDraw(canvas);
                        canvas.translate(-f15, 0.0f);
                        if (f15 > 0.0f) {
                            canvas.drawRect(0.0f, 0.0f, f15, getHeight(), this.M);
                        } else {
                            canvas.drawRect(f15 + f14, 0.0f, f14, getHeight(), this.M);
                        }
                        this.J = false;
                        return;
                    }
                }
                this.J = false;
                return;
            }
            int i5 = this.Q;
            if (i5 != 0) {
                canvas.drawColor(i5);
            }
            if (this.I) {
                q(canvas);
            } else {
                G();
            }
            super.dispatchDraw(canvas);
            this.J = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.I && motionEvent.getActionMasked() == 0) {
            this.I = false;
            G();
            if (MainUtil.C5(this.P)) {
                invalidate();
            }
        }
        if (!this.u && this.v == null && this.x <= 0.0f && this.A <= 0.0f && this.B <= 0.0f) {
            float f = this.G;
            if (f <= 0.0f && f >= 0.0f) {
                return super.dispatchTouchEvent(motionEvent);
            }
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        if (this.f19303c && !this.k) {
            super.draw(canvas);
        }
    }

    public WebTabAdapter.WebTabItem getBackItem() {
        return this.m;
    }

    public float getFakeX() {
        return this.x;
    }

    public String getListToStr() {
        int size;
        int min;
        String str;
        String str2;
        if (PrefZtwo.E) {
            try {
                List list = this.o;
                if (list != null && (size = list.size()) != 0 && (min = Math.min(this.p + 3, size)) > 0) {
                    int i = min - 10;
                    int i2 = 0;
                    if (i < 0) {
                        i = 0;
                    }
                    StringBuilder sb = null;
                    boolean z = false;
                    while (true) {
                        boolean z2 = true;
                        if (i >= min) {
                            break;
                        }
                        PageItem pageItem = (PageItem) list.get(i);
                        if (pageItem != null) {
                            WebNestView webNestView = pageItem.i;
                            if (i == this.p) {
                                str2 = "sb_curr_page";
                            } else {
                                if (webNestView != null) {
                                    str = webNestView.getValidPageUrl();
                                } else if (pageItem.b) {
                                    str = pageItem.d;
                                } else {
                                    str = pageItem.e;
                                }
                                String str3 = str;
                                z2 = z;
                                str2 = str3;
                            }
                            if (!TextUtils.isEmpty(str2)) {
                                if (sb == null) {
                                    sb = new StringBuilder();
                                } else {
                                    sb.append("!@!");
                                }
                                sb.append(str2);
                                i2++;
                            }
                            z = z2;
                        }
                        i++;
                    }
                    if (sb != null && (i2 != 1 || !z)) {
                        return sb.toString();
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public WebNestView getPageCreate() {
        WebNestView webNestView;
        int i = this.p;
        PageItem y = y(i);
        WebNestView webNestView2 = null;
        if (y != null && (webNestView = y.i) != null) {
            if (webNestView.getParent() == null) {
                j(webNestView, z(i));
            }
            webNestView2 = webNestView;
        }
        if (webNestView2 != null) {
            return webNestView2;
        }
        return x(i);
    }

    public int getPageIndex() {
        return this.p;
    }

    public WebNestView getPageValid() {
        WebNestView webNestView;
        int i = this.p;
        PageItem y = y(i);
        if (y == null || (webNestView = y.i) == null) {
            return null;
        }
        if (webNestView.getParent() == null) {
            j(webNestView, z(i));
        }
        return webNestView;
    }

    public float getTabX() {
        return this.A;
    }

    public float getTabY() {
        return this.B;
    }

    public final void j(View view, int i) {
        if (view != null) {
            try {
                MainUtil.V6(view);
                if (i < 0) {
                    i = 0;
                } else if (i > getChildCount()) {
                    i = getChildCount();
                }
                addViewInLayout(view, i, new FrameLayout.LayoutParams(-1, -1), true);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void k(WebNestView webNestView, final int i, int i2) {
        if (webNestView == null || this.t) {
            return;
        }
        this.t = true;
        j(webNestView, i2);
        List list = this.o;
        if (list == null) {
            list = new ArrayList();
        }
        PageItem y = y(i);
        PageItem pageItem = y;
        if (y == null) {
            Object obj = new Object();
            list.add(obj);
            pageItem = obj;
        }
        C(pageItem, webNestView, true);
        this.o = list;
        this.p = i;
        int size = list.size();
        if (size > 1) {
            this.q = true;
        }
        this.r = this.q;
        setBlankTime(this.p);
        if (size < 2) {
            this.t = false;
            return;
        }
        Handler handler = this.f;
        if (handler == null) {
            this.t = false;
        } else {
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.4
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestFrame webNestFrame = WebNestFrame.this;
                    try {
                        ArrayList a2 = WebNestFrame.a(webNestFrame, i + 1);
                        ArrayList b = WebNestFrame.b(webNestFrame);
                        if (a2 == null) {
                            a2 = b;
                        } else if (b != null) {
                            a2.addAll(b);
                        }
                        webNestFrame.setDelList(a2);
                    } catch (Exception unused) {
                    }
                    webNestFrame.t = false;
                }
            });
        }
    }

    public final void l() {
        ValueAnimator valueAnimator = this.v;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.v = null;
            J();
            setTranslationX(0.0f);
        }
        this.u = false;
    }

    public final void m() {
        l();
        ValueAnimator valueAnimator = this.z;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.z = null;
        }
        ValueAnimator valueAnimator2 = this.F;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.F = null;
        }
        ValueAnimator valueAnimator3 = this.H;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.H = null;
        }
        this.E = 0;
    }

    public final void n() {
        Handler handler;
        final long blankTime = getBlankTime();
        if (blankTime == 0 || (handler = this.f) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.3
            @Override // java.lang.Runnable
            public final void run() {
                WebNestFrame.this.setBlankOld(blankTime);
            }
        });
    }

    public final void o() {
        int size;
        WebNestView webNestView;
        boolean z;
        List list = this.o;
        if (list != null && (size = list.size()) != 0) {
            int i = this.p;
            int i2 = i - 4;
            int i3 = i + 4;
            if (i2 < 0) {
                i2 = 0;
            }
            if (i3 <= size) {
                size = i3;
            }
            int i4 = i - 1;
            int i5 = i + 1;
            while (i2 < size) {
                PageItem pageItem = (PageItem) list.get(i2);
                if (pageItem != null && (webNestView = pageItem.i) != null) {
                    if (i2 == this.p) {
                        if (webNestView.getVisibility() != 0) {
                            webNestView.setVisibility(0);
                        }
                        webNestView.onResume();
                    } else {
                        if (webNestView.getVisibility() != 8) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z && (i2 < i4 || i2 > i5)) {
                            webNestView.S();
                        }
                        if (z) {
                            webNestView.setVisibility(8);
                        }
                        webNestView.onPause();
                    }
                }
                i2++;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        setDetached(false);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        m();
        setDetached(true);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f19303c && !this.k) {
            super.onDraw(canvas);
        }
    }

    public final void p(boolean z) {
        int size;
        PageItem pageItem;
        WebNestView webNestView;
        List list = this.o;
        if (list != null && (size = list.size()) != 0) {
            int i = this.p;
            int i2 = i - 1;
            int i3 = i + 2;
            if (i2 < 0) {
                i2 = 0;
            }
            if (i3 <= size) {
                size = i3;
            }
            while (i2 < size) {
                if ((!z || i2 != this.p) && (pageItem = (PageItem) list.get(i2)) != null && (webNestView = pageItem.i) != null) {
                    webNestView.S();
                }
                i2++;
            }
        }
    }

    public final void q(Canvas canvas) {
        float f;
        int width;
        boolean z;
        if (MainUtil.C5(this.P) && canvas != null) {
            int i = MainActivity.b1;
            int i2 = MainActivity.c1;
            if (i != 0 && i2 != 0) {
                Paint paint = this.T;
                if (paint == null) {
                    paint = new Paint();
                    this.T = paint;
                }
                Bitmap bitmap = this.S;
                if (!MainUtil.f6(bitmap)) {
                    if (i > i2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.U = z;
                    bitmap = MainUtil.l4(getContext(), this.U);
                    this.S = bitmap;
                    if (!MainUtil.f6(bitmap)) {
                        H(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.31
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebNestFrame webNestFrame = WebNestFrame.this;
                                webNestFrame.S = MainUtil.m4(webNestFrame.getContext(), webNestFrame.U);
                            }
                        });
                        return;
                    }
                }
                Object parent = getParent();
                if (parent != null) {
                    float f2 = this.x;
                    if (f2 > 0.0f) {
                        if (this.g) {
                            width = getWidth();
                            f2 -= width;
                        }
                        f = 0.0f;
                    } else {
                        f2 = this.A;
                        if (f2 > 0.0f) {
                            if (this.g) {
                                width = getWidth();
                                f2 -= width;
                            }
                        } else {
                            float f3 = this.B;
                            if (f3 > 0.0f) {
                                f = f3;
                                f2 = 0.0f;
                            } else {
                                f2 = this.G;
                                if (f2 <= 0.0f && f2 >= 0.0f) {
                                    f2 = 0.0f;
                                    f = 0.0f;
                                } else if (this.g) {
                                    f2 = -f2;
                                }
                            }
                        }
                        f = 0.0f;
                    }
                    float width2 = i / bitmap.getWidth();
                    float height = i2 / bitmap.getHeight();
                    canvas.save();
                    if (f2 > 0.0f || f > 0.0f) {
                        canvas.clipRect(Math.max(f2, 0.0f), Math.max(f, 0.0f), getWidth(), getHeight());
                    }
                    int i3 = PrefTts.F;
                    if (i3 != 0 && i > i2) {
                        f2 -= i3;
                    }
                    if (MainConst.d) {
                        f2 -= MainActivity.d1;
                    }
                    float translationY = f - ((View) parent).getTranslationY();
                    if (PrefWeb.t) {
                        translationY -= PrefMain.u;
                    }
                    if (PrefWeb.v) {
                        translationY -= MainUtil.H3();
                    }
                    if (PrefTts.H) {
                        translationY -= WebViewActivity.Io;
                    }
                    canvas.translate(f2, translationY);
                    canvas.scale(width2, height);
                    try {
                        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
                    } catch (Exception unused) {
                    }
                    canvas.restore();
                }
            }
        }
    }

    public final void r(final int i, final boolean z) {
        Handler handler;
        if (this.h == null || (handler = this.f) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.7
            @Override // java.lang.Runnable
            public final void run() {
                WebFrameListener webFrameListener = WebNestFrame.this.h;
                if (webFrameListener != null) {
                    webFrameListener.a(i, z);
                }
            }
        });
    }

    public final void s(final int i, final boolean z) {
        WebFrameListener webFrameListener = this.h;
        if (webFrameListener != null) {
            if (this.w) {
                webFrameListener.c(i, z);
            }
            Handler handler = this.f;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.6
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestFrame webNestFrame = WebNestFrame.this;
                    WebFrameListener webFrameListener2 = webNestFrame.h;
                    if (webFrameListener2 != null) {
                        webFrameListener2.e(i, z, webNestFrame.w);
                    }
                }
            });
        }
    }

    public void setAddNeed(boolean z) {
        this.u = z;
        if (z) {
            super.setVisibility(4);
        }
    }

    public void setAddPage(boolean z) {
        final List list;
        int i;
        PageItem y;
        if (this.R != z) {
            this.R = z;
            if (!z && (list = this.o) != null && list.size() >= 2 && (y = y((i = this.p))) != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(y);
                this.o = arrayList;
                this.p = 0;
                this.r = this.q;
                setBlankTime(0);
                list.remove(i);
                if (!list.isEmpty()) {
                    removeAllViewsInLayout();
                    j(y.i, 0);
                    Handler handler = this.f;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebNestView webNestView;
                            try {
                                ArrayList arrayList2 = null;
                                for (PageItem pageItem : list) {
                                    if (pageItem != null && (webNestView = pageItem.i) != null) {
                                        webNestView.setDetached(true);
                                        if (arrayList2 == null) {
                                            arrayList2 = new ArrayList();
                                        }
                                        arrayList2.add(webNestView);
                                    }
                                }
                                WebNestFrame.this.setDelList(arrayList2);
                            } catch (Exception unused) {
                            }
                        }
                    });
                }
            }
        }
    }

    public void setBackItem(WebTabAdapter.WebTabItem webTabItem) {
        this.m = webTabItem;
    }

    public void setBlankView(boolean z) {
        WebNestView webNestView;
        PageItem pageItem;
        WebNestView webNestView2;
        List<PageItem> list = this.o;
        if (list != null && !list.isEmpty()) {
            List<WebView> list2 = null;
            try {
                if (z) {
                    if (getChildCount() >= 2) {
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            if (i != this.p && (pageItem = (PageItem) list.get(i)) != null && (webNestView2 = pageItem.i) != null) {
                                K(pageItem, webNestView2);
                                webNestView2.setDetached(true);
                                if (list2 == null) {
                                    list2 = new ArrayList<>();
                                }
                                list2.add(webNestView2);
                            }
                        }
                        setDelList(list2);
                        return;
                    }
                }
                if (getChildCount() != 0) {
                    for (PageItem pageItem2 : list) {
                        if (pageItem2 != null && (webNestView = pageItem2.i) != null) {
                            K(pageItem2, webNestView);
                            webNestView.setDetached(true);
                            if (list2 == null) {
                                list2 = new ArrayList<>();
                            }
                            list2.add(webNestView);
                        }
                    }
                    setDelList(list2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void setDarkMode(boolean z) {
        this.P = z;
        int backColor = getBackColor();
        if (this.Q == backColor) {
            return;
        }
        this.Q = backColor;
        invalidate();
    }

    public void setListener(WebFrameListener webFrameListener) {
        this.h = webFrameListener;
    }

    public void setPageIndex(int i) {
        if (this.p == i) {
            return;
        }
        this.p = i;
        this.r = this.q;
        setBlankTime(i);
    }

    public void setTabUid(long j) {
        this.i = j;
    }

    public void setTabX(float f) {
        boolean z;
        if (!this.I) {
            this.I = true;
            z = true;
        } else {
            z = false;
        }
        if (this.g) {
            if (f <= 0.0f) {
                f = 0.1f;
            } else if (f >= getWidth()) {
                f = getWidth() - 0.1f;
            }
        }
        if (Float.compare(this.A, f) == 0) {
            if (z && MainUtil.C5(this.P)) {
                invalidate();
                return;
            }
            return;
        }
        this.A = f;
        B();
        Q(this.A, 1);
        invalidate();
    }

    public void setTabY(float f) {
        boolean z;
        if (!this.I) {
            z = true;
            this.I = true;
        } else {
            z = false;
        }
        if (Float.compare(this.B, f) == 0) {
            if (z && MainUtil.C5(this.P)) {
                invalidate();
                return;
            }
            return;
        }
        this.B = f;
        B();
        Q(this.B, 2);
        invalidate();
    }

    public void setValid(boolean z) {
        this.f19303c = z;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != 0) {
            if (!this.j) {
                this.j = true;
                if (this.r && !this.s && this.f19303c && PrefZtwo.E && this.i > 0) {
                    this.r = false;
                    this.s = true;
                    H(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.9
                        @Override // java.lang.Runnable
                        public final void run() {
                            PageItem y;
                            WebNestView webNestView;
                            WebNestFrame webNestFrame = WebNestFrame.this;
                            long j = webNestFrame.i;
                            if (j > 0 && (y = webNestFrame.y(webNestFrame.p)) != null && (webNestView = y.i) != null) {
                                DbTabState.f(webNestFrame.getContext(), j, webNestView.getValidPageUrl(), null, webNestFrame.getListToStr());
                            }
                            webNestFrame.s = false;
                        }
                    });
                }
            }
            G();
        }
        WebNestView pageValid = getPageValid();
        if (pageValid != null && !pageValid.n && i == 0 && getVisibility() != 0 && !this.a0) {
            this.a0 = true;
            Handler handler = this.f;
            if (handler != null) {
                handler.post(new AnonymousClass2());
            }
        }
        super.setVisibility(i);
        if (pageValid == null) {
            return;
        }
        if (i == 0 && pageValid.getVisibility() != 0) {
            pageValid.setVisibility(0);
        } else {
            pageValid.setWebVisible(i);
        }
    }

    public final boolean t(WebNestView webNestView) {
        WebNestView webNestView2;
        this.f19303c = false;
        MainUtil.V6(this);
        List<PageItem> list = this.o;
        MainUtil.R6(this.f);
        this.f = null;
        m();
        G();
        this.L = null;
        this.M = null;
        this.m = null;
        this.o = null;
        this.n = null;
        this.h = null;
        this.V = null;
        if (list != null && !list.isEmpty()) {
            boolean z = false;
            List<WebView> list2 = null;
            for (PageItem pageItem : list) {
                if (pageItem != null && (webNestView2 = pageItem.i) != null) {
                    if (webNestView != null && webNestView.equals(webNestView2)) {
                        webNestView = null;
                        z = true;
                    }
                    C(pageItem, null, false);
                    webNestView2.setDetached(true);
                    if (list2 == null) {
                        list2 = new ArrayList<>();
                    }
                    list2.add(webNestView2);
                }
            }
            setDelList(list2);
            this.W = null;
            return z;
        }
        this.W = null;
        return false;
    }

    public final void u() {
        Handler handler;
        final WebNestView pageValid = getPageValid();
        if (pageValid != null && pageValid.f19338c && pageValid.i != 2 && (handler = this.f) != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestFrame.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView.this.onPause();
                }
            });
        }
    }

    public final void v() {
        this.f19303c = false;
        MainUtil.R6(this.f);
        this.f = null;
        m();
        G();
        this.L = null;
        this.M = null;
        this.m = null;
        this.o = null;
        this.n = null;
        this.h = null;
        this.V = null;
        this.W = null;
    }

    public final void w(boolean z) {
        QuickView quickView;
        boolean z2 = this.R;
        boolean z3 = PrefZtwo.E;
        if (z2 != z3) {
            setAddPage(z3);
        }
        WebNestView pageCreate = getPageCreate();
        if (pageCreate == null) {
            return;
        }
        this.j = false;
        if (z && (quickView = pageCreate.Z0) != null) {
            quickView.B = quickView.D;
            quickView.C = false;
        }
        pageCreate.onResume();
    }

    public final WebNestView x(int i) {
        String str;
        PageItem y = y(i);
        if (y != null) {
            if (y.b) {
                str = y.d;
            } else {
                str = y.e;
            }
            if (TextUtils.isEmpty(str)) {
                str = "about:blank";
            }
            try {
                WebNestView webNestView = new WebNestView(getContext());
                if (y.b) {
                    long j = y.f19337c;
                    webNestView.z0 = true;
                    webNestView.A0 = j;
                    webNestView.B0 = str;
                } else {
                    webNestView.setBlankPage(str);
                }
                webNestView.setDeskMode(y.f);
                webNestView.T(y.g, y.h);
                webNestView.setScrollPos(PrefZone.x);
                webNestView.setVisibility(8);
                webNestView.g();
                j(webNestView, z(i));
                C(y, webNestView, true);
                return webNestView;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public final PageItem y(int i) {
        List list = this.o;
        if (i >= 0 && list != null && i < list.size()) {
            return (PageItem) list.get(i);
        }
        return null;
    }

    public final int z(int i) {
        if (i == this.p) {
            return getChildCount();
        }
        WebNestView pageValid = getPageValid();
        if (pageValid == null) {
            return getChildCount();
        }
        int indexOfChild = indexOfChild(pageValid);
        if (indexOfChild == -1) {
            return getChildCount();
        }
        if (i > this.p) {
            return indexOfChild + 1;
        }
        return indexOfChild;
    }
}
