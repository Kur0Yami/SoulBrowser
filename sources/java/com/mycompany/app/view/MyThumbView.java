package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.mycompany.app.db.book.DbBookIcon;
import com.mycompany.app.db.book.DbTabThumb;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.BitmapUtil;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.web.WebTabAdapter;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MyThumbView extends ImageView {
    public Paint A;
    public int B;
    public List C;
    public int D;
    public boolean E;
    public boolean F;
    public boolean G;
    public Bitmap H;
    public Bitmap I;
    public Bitmap J;
    public Bitmap K;
    public Bitmap L;
    public Bitmap M;
    public Bitmap N;
    public Bitmap O;
    public Rect P;
    public Rect Q;
    public RectF R;
    public Paint S;
    public int T;
    public Paint U;
    public int V;
    public int W;
    public boolean a0;
    public ExecutorService b0;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f19026c;
    public float c0;
    public boolean d0;
    public final Runnable e0;
    public int f;
    public float f0;
    public Paint g;
    public boolean g0;
    public int h;
    public final Runnable h0;
    public int i;
    public float j;
    public float k;
    public int l;
    public Paint m;
    public RectF n;
    public float o;
    public float p;
    public float q;
    public float r;
    public boolean s;
    public AlphaAnimation t;
    public ValueAnimator u;
    public ValueAnimator v;
    public float w;
    public boolean x;
    public boolean y;
    public final int z;

    public MyThumbView(Context context) {
        super(context);
        this.e0 = new Runnable() { // from class: com.mycompany.app.view.MyThumbView.6
            @Override // java.lang.Runnable
            public final void run() {
                MyThumbView myThumbView = MyThumbView.this;
                myThumbView.d0 = false;
                if (myThumbView.u != null) {
                    myThumbView.setValAnimDn(myThumbView.c0);
                }
            }
        };
        this.h0 = new Runnable() { // from class: com.mycompany.app.view.MyThumbView.10
            @Override // java.lang.Runnable
            public final void run() {
                MyThumbView myThumbView = MyThumbView.this;
                myThumbView.g0 = false;
                if (myThumbView.v != null) {
                    myThumbView.setValAnimUp(myThumbView.f0);
                }
            }
        };
        this.f19026c = true;
        this.z = MainApp.E1 + MainApp.G1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimDn(float f) {
        this.w = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimUp(float f) {
        this.w = f;
        invalidate();
    }

    public final void c() {
        AlphaAnimation alphaAnimation = this.t;
        if (alphaAnimation == null) {
            return;
        }
        alphaAnimation.cancel();
        this.t = null;
        clearAnimation();
    }

    public final void d(boolean z) {
        boolean z2 = true;
        boolean z3 = false;
        if (this.y) {
            this.y = false;
            z3 = true;
        }
        ValueAnimator valueAnimator = this.u;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.u = null;
            z3 = true;
        }
        ValueAnimator valueAnimator2 = this.v;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.v = null;
        } else {
            z2 = z3;
        }
        if (z && z2) {
            invalidate();
        }
    }

    public final void e(int i, int i2) {
        if (i != 0 && i2 != 0) {
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0) {
                float f = i2 / i;
                float f2 = width;
                this.j = f2;
                float f3 = f2 * f;
                this.k = f3;
                float f4 = height;
                if (f3 > f4) {
                    this.k = f4;
                    this.j = f4 / f;
                    return;
                }
                return;
            }
            this.j = 0.0f;
            this.k = 0.0f;
            return;
        }
        this.j = 0.0f;
        this.k = 0.0f;
    }

    public final void f(Canvas canvas, int i, int i2, Bitmap bitmap, Bitmap bitmap2, int i3) {
        Rect rect;
        int i4;
        int i5;
        int min;
        Paint paint;
        int i6;
        int i7;
        int i8;
        if (i != 0 && i2 != 0 && this.P != null && (rect = this.Q) != null) {
            int i9 = this.W;
            int i10 = i9 * 3;
            int i11 = (i / 2) - i10;
            int i12 = (i2 / 2) - i10;
            int i13 = i9 * 2;
            if (i3 == 0) {
                i5 = i13;
            } else {
                if (i3 == 1) {
                    i4 = (i - i11) - i13;
                } else if (i3 == 2) {
                    i5 = (i2 - i12) - i13;
                } else {
                    i4 = (i - i11) - i13;
                    i13 = (i2 - i12) - i13;
                }
                i5 = i13;
                i13 = i4;
            }
            rect.set(i13, i5, i13 + i11, i5 + i12);
            if (MainUtil.f6(bitmap)) {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                if (width > height) {
                    float f = i12 / height;
                    int round = Math.round(width * f);
                    int min2 = Math.min(width, Math.round(i11 / f));
                    if (round > min2) {
                        round = min2;
                    }
                    if (width > round) {
                        i8 = Math.round((width - round) / 2.0f);
                    } else {
                        i8 = 0;
                    }
                    this.P.set(i8, 0, round + i8, height);
                    canvas.drawBitmap(bitmap, this.P, this.Q, (Paint) null);
                } else {
                    float f2 = i11 / width;
                    int round2 = Math.round(height * f2);
                    int min3 = Math.min(height, Math.round(i12 / f2));
                    if (round2 > min3) {
                        round2 = min3;
                    }
                    this.P.set(0, 0, width, round2);
                    canvas.drawBitmap(bitmap, this.P, this.Q, (Paint) null);
                }
            }
            Paint paint2 = this.S;
            if (paint2 != null) {
                if (MainApp.K1) {
                    i7 = -12632257;
                } else {
                    i7 = -2434342;
                }
                if (this.T != i7) {
                    this.T = i7;
                    paint2.setColor(i7);
                }
                canvas.drawRect(this.Q, this.S);
            }
            if (MainUtil.f6(bitmap2) && this.P != null && this.Q != null) {
                int i14 = (i11 / 2) + i13;
                int i15 = (i12 / 2) + i5;
                if (this.D == 0) {
                    min = (MainApp.F1 * 3) / 2;
                } else {
                    int i16 = this.W * 3;
                    min = Math.min(i11 - i16, i12 - i16) / 2;
                }
                this.Q.set(i14 - min, i15 - min, i14 + min, i15 + min);
                if (this.D == 0 && (paint = this.U) != null) {
                    if (MainApp.K1) {
                        i6 = -16777216;
                    } else {
                        i6 = -1;
                    }
                    if (this.V != i6) {
                        this.V = i6;
                        paint.setColor(i6);
                    }
                    RectF rectF = this.R;
                    if (rectF != null) {
                        int i17 = (MainApp.G1 / 2) + min;
                        rectF.set(i14 - i17, i15 - i17, i14 + i17, i15 + i17);
                        RectF rectF2 = this.R;
                        float f3 = MainApp.G1;
                        canvas.drawRoundRect(rectF2, f3, f3, this.U);
                    }
                }
                this.P.set(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
                canvas.drawBitmap(bitmap2, this.P, this.Q, (Paint) null);
            }
        }
    }

    public final void g(final int i) {
        List list = this.C;
        if (list != null && i >= 0 && i < list.size()) {
            WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) this.C.get(i);
            if (webTabItem != null && !TextUtils.isEmpty(webTabItem.j)) {
                final String a2 = MemoryCacheUtils.a(2, webTabItem.j + webTabItem.l + this.E);
                Bitmap a3 = ImageLoader.f().g().a(a2);
                if (MainUtil.f6(a3)) {
                    m(a3, i);
                    return;
                }
                final long j = this.B;
                final long j2 = webTabItem.f19520c;
                i(new Runnable() { // from class: com.mycompany.app.view.MyThumbView.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyThumbView myThumbView = MyThumbView.this;
                        if (myThumbView.f19026c) {
                            if (j == myThumbView.B) {
                                Bitmap d = DbTabThumb.d(myThumbView.getContext(), j2);
                                if (MainUtil.f6(d)) {
                                    ImageLoader.f().g().b(a2, d);
                                    if (!myThumbView.f19026c) {
                                        return;
                                    }
                                    myThumbView.m(d, i);
                                    myThumbView.post(new Runnable() { // from class: com.mycompany.app.view.MyThumbView.1.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MyThumbView.this.invalidate();
                                        }
                                    });
                                }
                            }
                        }
                    }
                });
                return;
            }
            m(null, i);
            return;
        }
        m(null, i);
    }

    public final void h(final int i) {
        List list = this.C;
        if (list != null && i >= 0 && i < list.size()) {
            WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) this.C.get(i);
            if (webTabItem != null && !TextUtils.isEmpty(webTabItem.j)) {
                final String O1 = MainUtil.O1(webTabItem.j);
                Bitmap n4 = MainUtil.n4(O1);
                if (MainUtil.f6(n4)) {
                    n(n4, i);
                    return;
                }
                final long j = this.B;
                final String str = webTabItem.j;
                i(new Runnable() { // from class: com.mycompany.app.view.MyThumbView.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i2;
                        MyThumbView myThumbView = MyThumbView.this;
                        if (myThumbView.f19026c) {
                            if (j == myThumbView.B) {
                                Context context = myThumbView.getContext();
                                String str2 = O1;
                                Bitmap b = DbBookIcon.b(context, str2);
                                if (MainUtil.f6(b)) {
                                    MainUtil.V7(str2, b);
                                } else {
                                    Resources resources = myThumbView.getResources();
                                    String str3 = str;
                                    if (!TextUtils.isEmpty(str3) && (str3.startsWith("file:///") || str3.startsWith("/data/"))) {
                                        if ("file:///android_asset/shortcut.html".equals(str3)) {
                                            if (MainApp.K1) {
                                                i2 = R.drawable.outline_home_black_web_24;
                                            } else {
                                                i2 = R.drawable.outline_home_dark_web_24;
                                            }
                                        } else if (MainApp.K1) {
                                            i2 = R.drawable.outline_offline_pin_black_web_24;
                                        } else {
                                            i2 = R.drawable.outline_offline_pin_dark_web_24;
                                        }
                                    } else if (MainApp.K1) {
                                        i2 = R.drawable.outline_public_black_web_24;
                                    } else {
                                        i2 = R.drawable.outline_public_dark_web_24;
                                    }
                                    b = BitmapUtil.d(resources, i2);
                                    if (!MainUtil.f6(b)) {
                                        return;
                                    }
                                }
                                if (!myThumbView.f19026c) {
                                    return;
                                }
                                myThumbView.n(b, i);
                                myThumbView.post(new Runnable() { // from class: com.mycompany.app.view.MyThumbView.2.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyThumbView.this.invalidate();
                                    }
                                });
                            }
                        }
                    }
                });
                return;
            }
            n(null, i);
            return;
        }
        n(null, i);
    }

    public final void i(Runnable runnable) {
        ExecutorService executorService = this.b0;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(getContext());
            if (executorService == null) {
                return;
            } else {
                this.b0 = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f19026c) {
            return;
        }
        super.invalidate();
    }

    public final void j(int i, int i2, int i3) {
        if (i3 == 0) {
            if (this.g != null) {
                this.g = null;
                return;
            }
            return;
        }
        this.h = i;
        this.i = i2;
        e(i, i2);
        if (this.g == null) {
            Paint paint = new Paint();
            this.g = paint;
            paint.setAntiAlias(true);
            this.g.setStyle(Paint.Style.FILL);
        }
        this.g.setColor(i3);
    }

    public final void k(int i, int i2) {
        if (this.l == i) {
            return;
        }
        this.l = i;
        if (i != 0) {
            if (this.m == null) {
                Paint paint = new Paint();
                this.m = paint;
                paint.setAntiAlias(true);
                this.m.setStyle(Paint.Style.STROKE);
            }
            this.m.setColor(i);
            float f = i2;
            this.m.setStrokeWidth(f);
            if (this.n == null) {
                this.n = new RectF();
            }
            float f2 = f / 2.0f;
            this.o = f2;
            this.n.set(f2, f2, getWidth() - this.o, getHeight() - this.o);
            this.p = MainApp.F1;
        } else {
            this.m = null;
            this.n = null;
            this.o = 0.0f;
            this.p = 0.0f;
        }
        invalidate();
    }

    public final void l(Bitmap bitmap) {
        c();
        if (this.A == null) {
            Paint paint = new Paint();
            this.A = paint;
            paint.setAntiAlias(true);
            this.A.setFilterBitmap(true);
        }
        if (!MainUtil.f6(bitmap)) {
            super.setImageDrawable(null);
            return;
        }
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        super.setImageBitmap(bitmap);
        if (this.s && getVisibility() == 0) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            this.t = alphaAnimation;
            alphaAnimation.setDuration(400L);
            this.t.setInterpolator(new DecelerateInterpolator());
            startAnimation(this.t);
        }
    }

    public final void m(Bitmap bitmap, int i) {
        if (i == 0) {
            this.H = bitmap;
            return;
        }
        if (i == 1) {
            this.I = bitmap;
        } else if (i == 2) {
            this.J = bitmap;
        } else if (i == 3) {
            this.K = bitmap;
        }
    }

    public final void n(Bitmap bitmap, int i) {
        if (i == 0) {
            this.L = bitmap;
            return;
        }
        if (i == 1) {
            this.M = bitmap;
        } else if (i == 2) {
            this.N = bitmap;
        } else if (i == 3) {
            this.O = bitmap;
        }
    }

    public final void o(int i, int i2, List list, boolean z) {
        boolean z2;
        this.B = i;
        this.C = list;
        this.D = i2;
        this.E = z;
        if (list != null && !list.isEmpty()) {
            if (PrefZone.C == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean z3 = PrefZone.D;
            if (this.F != z2 || this.G != z3) {
                this.F = z2;
                this.G = z3;
                this.W = 0;
            }
            getContext();
            if (this.f19026c) {
                if (this.S == null) {
                    Paint paint = new Paint();
                    this.S = paint;
                    paint.setAntiAlias(true);
                    this.S.setStyle(Paint.Style.STROKE);
                    this.S.setStrokeWidth(Math.round(MainUtil.G(getContext(), 1.0f)));
                    this.T = 0;
                }
                if (this.U == null) {
                    Paint paint2 = new Paint();
                    this.U = paint2;
                    paint2.setAntiAlias(true);
                    this.U.setStyle(Paint.Style.FILL);
                    this.V = 0;
                }
                if (this.P == null) {
                    this.P = new Rect();
                }
                if (this.Q == null) {
                    this.Q = new Rect();
                }
                if (this.R == null) {
                    this.R = new RectF();
                }
                if (this.W == 0) {
                    if (this.F) {
                        if (this.G) {
                            this.W = MainApp.G1;
                        } else {
                            this.W = Math.round(MainUtil.G(getContext(), 5.0f));
                        }
                    } else {
                        this.W = MainApp.G1 / 2;
                    }
                }
            }
            h(0);
            h(1);
            h(2);
            h(3);
            if (this.D == 0) {
                g(0);
                g(1);
                g(2);
                g(3);
            }
            invalidate();
            return;
        }
        this.C = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = null;
        this.T = 0;
        this.U = null;
        this.V = 0;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        c();
        d(false);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        boolean z2;
        float width;
        RectF rectF;
        RectF rectF2;
        if (this.f19026c) {
            boolean z3 = true;
            if (!this.y && this.u == null && this.v == null) {
                z2 = false;
            } else {
                if (this.m != null && this.n != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    canvas.save();
                }
                float f = this.w;
                canvas.scale(f, f, this.q, this.r);
                z2 = z;
            }
            int i = this.f;
            if (i != 0) {
                canvas.drawColor(i);
            }
            if (this.g != null) {
                e(this.h, this.i);
                float f2 = this.j / 2.0f;
                float f3 = MainApp.w1;
                float f4 = f2 - f3;
                float f5 = (this.k / 2.0f) - f3;
                float f6 = this.q;
                float f7 = this.r;
                canvas.drawRect(f6 - f4, f7 - f5, f4 + f6, f7 + f5, this.g);
            }
            List list = this.C;
            if (list != null) {
                int size = list.size();
                if (size > 0) {
                    int width2 = getWidth();
                    int height = getHeight();
                    f(canvas, width2, height, this.H, this.L, 0);
                    if (size > 1) {
                        f(canvas, width2, height, this.I, this.M, 1);
                        if (size > 2) {
                            f(canvas, width2, height, this.J, this.N, 2);
                            if (size > 3) {
                                f(canvas, width2, height, this.K, this.O, 3);
                            }
                        }
                    }
                }
                Paint paint = this.m;
                if (paint != null && (rectF2 = this.n) != null) {
                    float f8 = this.p;
                    if (f8 != 0.0f) {
                        canvas.drawRoundRect(rectF2, f8, f8, paint);
                        return;
                    } else {
                        canvas.drawRect(rectF2, paint);
                        return;
                    }
                }
                return;
            }
            Drawable drawable = getDrawable();
            if (drawable != null) {
                try {
                    if (drawable instanceof BitmapDrawable) {
                        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                        if (MainUtil.f6(bitmap)) {
                            if (this.A != null) {
                                if (z2) {
                                    canvas.restore();
                                    canvas.save();
                                } else {
                                    if (this.m == null || this.n == null) {
                                        z3 = false;
                                    }
                                    if (z3) {
                                        try {
                                            canvas.save();
                                        } catch (Exception unused) {
                                            z2 = z3;
                                        }
                                    }
                                    z2 = z3;
                                }
                                int width3 = bitmap.getWidth();
                                int height2 = bitmap.getHeight();
                                if (width3 > height2) {
                                    width = getHeight() / height2;
                                    float f9 = width3 * width;
                                    float width4 = getWidth();
                                    if (f9 > width4) {
                                        canvas.translate((width4 - f9) / 2.0f, 0.0f);
                                    }
                                } else {
                                    width = getWidth() / width3;
                                }
                                canvas.scale(width, width);
                                canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.A);
                            } else {
                                super.onDraw(canvas);
                            }
                        }
                    } else {
                        super.onDraw(canvas);
                    }
                } catch (Exception unused2) {
                }
            }
            if (z2) {
                canvas.restore();
            }
            Paint paint2 = this.m;
            if (paint2 != null && (rectF = this.n) != null) {
                float f10 = this.p;
                if (f10 != 0.0f) {
                    canvas.drawRoundRect(rectF, f10, f10, paint2);
                } else {
                    canvas.drawRect(rectF, paint2);
                }
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = i;
        this.q = f / 2.0f;
        float f2 = i2;
        this.r = f2 / 2.0f;
        RectF rectF = this.n;
        if (rectF != null) {
            float f3 = this.o;
            rectF.set(f3, f3, f - f3, f2 - f3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if (r0 != 3) goto L32;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            boolean r0 = r5.isEnabled()
            r1 = 0
            if (r0 == 0) goto La5
            boolean r0 = r5.isClickable()
            if (r0 != 0) goto Lf
            goto La5
        Lf:
            int r0 = r6.getActionMasked()
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L40
            if (r0 == r3) goto L3a
            if (r0 == r2) goto L20
            r2 = 3
            if (r0 == r2) goto L3a
            goto La0
        L20:
            boolean r0 = r5.y
            if (r0 == 0) goto La0
            float r0 = r6.getRawX()
            int r0 = (int) r0
            float r2 = r6.getRawY()
            int r2 = (int) r2
            boolean r0 = com.mycompany.app.main.MainUtil.J5(r0, r2, r1, r5)
            if (r0 != 0) goto La0
            r5.p()
            r5.y = r1
            goto La0
        L3a:
            r5.p()
            r5.y = r1
            goto La0
        L40:
            android.animation.ValueAnimator r0 = r5.u
            if (r0 == 0) goto L45
            goto L8e
        L45:
            r0 = 1065353216(0x3f800000, float:1.0)
            r5.w = r0
            r5.c0 = r0
            r5.d0 = r1
            boolean r4 = r5.x
            if (r4 == 0) goto L55
            r4 = 1061997773(0x3f4ccccd, float:0.8)
            goto L58
        L55:
            r4 = 1067030938(0x3f99999a, float:1.2)
        L58:
            float[] r2 = new float[r2]
            r2[r1] = r0
            r2[r3] = r4
            android.animation.ValueAnimator r0 = android.animation.ValueAnimator.ofFloat(r2)
            r5.u = r0
            r1 = 200(0xc8, double:9.9E-322)
            r0.setDuration(r1)
            android.animation.ValueAnimator r0 = r5.u
            com.mycompany.app.dialog.a.r(r0)
            android.animation.ValueAnimator r0 = r5.u
            com.mycompany.app.view.MyThumbView$4 r1 = new com.mycompany.app.view.MyThumbView$4
            r1.<init>()
            r0.addUpdateListener(r1)
            android.animation.ValueAnimator r0 = r5.u
            com.mycompany.app.view.MyThumbView$5 r1 = new com.mycompany.app.view.MyThumbView$5
            r1.<init>()
            r0.addListener(r1)
            android.animation.ValueAnimator r0 = r5.v
            if (r0 == 0) goto L89
            r0.cancel()
        L89:
            android.animation.ValueAnimator r0 = r5.u
            r0.start()
        L8e:
            r5.y = r3
            float r0 = r6.getRawX()
            int r0 = (int) r0
            float r1 = r6.getRawY()
            int r1 = (int) r1
            int r2 = r5.z
            int r2 = -r2
            com.mycompany.app.main.MainUtil.J5(r0, r1, r2, r5)
        La0:
            boolean r6 = super.onTouchEvent(r6)
            return r6
        La5:
            r5.y = r1
            boolean r6 = super.onTouchEvent(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyThumbView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        float f = this.w;
        if (this.v == null) {
            this.w = f;
            if (Float.compare(f, 1.0f) == 0) {
                return;
            }
            float f2 = this.w;
            this.f0 = f2;
            this.g0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, 1.0f);
            this.v = ofFloat;
            ofFloat.setDuration(200L);
            a.v(this.v);
            this.v.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyThumbView.8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    MyThumbView myThumbView = MyThumbView.this;
                    if (myThumbView.v != null) {
                        myThumbView.f0 = floatValue;
                        if (myThumbView.g0) {
                            return;
                        }
                        myThumbView.g0 = true;
                        MainApp.N(myThumbView.getContext(), myThumbView.h0);
                    }
                }
            });
            this.v.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyThumbView.9
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyThumbView myThumbView = MyThumbView.this;
                    if (myThumbView.v == null) {
                        return;
                    }
                    myThumbView.v = null;
                    myThumbView.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyThumbView myThumbView = MyThumbView.this;
                    if (myThumbView.v == null) {
                        return;
                    }
                    MainApp.N(myThumbView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyThumbView.11
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyThumbView myThumbView2 = MyThumbView.this;
                            if (myThumbView2.v == null) {
                                return;
                            }
                            myThumbView2.v = null;
                            myThumbView2.setValAnimUp(1.0f);
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
            ValueAnimator valueAnimator = this.u;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.v.start();
        }
    }

    public void setBackColor(int i) {
        this.f = i;
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        if (!z) {
            d(true);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        float f;
        super.setEnabled(z);
        if (z) {
            f = 1.0f;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        if (!z) {
            d(true);
        }
    }

    public void setFadeIn(boolean z) {
        this.s = z;
        if (!z) {
            c();
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        c();
        this.A = null;
        if (!MainUtil.f6(bitmap)) {
            super.setImageDrawable(null);
            return;
        }
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        super.setImageBitmap(bitmap);
        if (this.s && getVisibility() == 0) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            this.t = alphaAnimation;
            alphaAnimation.setDuration(400L);
            this.t.setInterpolator(new DecelerateInterpolator());
            startAnimation(this.t);
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        c();
        this.g = null;
        this.A = null;
        if (i == 0) {
            super.setImageDrawable(null);
            return;
        }
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        super.setImageResource(i);
        if (this.s && getVisibility() == 0) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            this.t = alphaAnimation;
            alphaAnimation.setDuration(400L);
            this.t.setInterpolator(new DecelerateInterpolator());
            startAnimation(this.t);
        }
    }

    public void setRoundClip(boolean z) {
        if (this.a0 == z) {
            return;
        }
        this.a0 = z;
        if (!z) {
            setClipToOutline(false);
        } else {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyThumbView.3
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (outline != null) {
                        MyThumbView myThumbView = MyThumbView.this;
                        if (myThumbView.a0) {
                            outline.setRoundRect(0, 0, myThumbView.getWidth(), myThumbView.getHeight(), MainApp.F1);
                        }
                    }
                }
            });
            setClipToOutline(true);
        }
    }

    public void setTouchSmall(boolean z) {
        this.x = z;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        if (i != 0) {
            c();
            d(false);
        }
        super.setVisibility(i);
    }
}
