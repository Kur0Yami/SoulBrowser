package com.mycompany.app.zoom;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.OverScroller;
import com.mycompany.app.main.image.MainImageView;
import com.mycompany.app.zoom.ZoomGestureDetector;
import com.mycompany.app.zoom.ZoomScroller;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class ZoomImageAttacher implements View.OnTouchListener, ZoomGestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, ViewTreeObserver.OnGlobalLayoutListener {
    public boolean A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;

    /* renamed from: c, reason: collision with root package name */
    public ViewGroup f20930c;
    public ImageView f;
    public WeakReference g;
    public GestureDetector h;
    public ZoomGestureDetector i;
    public AttacherListener j;
    public final boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public FlingRunnable q;
    public final Matrix r;
    public final Matrix s;
    public final Matrix t;
    public final RectF u;
    public final float[] v;
    public ImageView.ScaleType w;
    public boolean x;
    public boolean y;
    public boolean z;

    /* loaded from: classes3.dex */
    public class AnimatedZoomRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final float f20932c;
        public final float f;
        public final float g;
        public final float h;

        public AnimatedZoomRunnable(float f, float f2, float f3, float f4) {
            this.g = f2;
            this.f20932c = f3;
            this.f = f4;
            if (f < f2) {
                this.h = 1.07f;
            } else {
                this.h = 0.93f;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZoomImageAttacher zoomImageAttacher = ZoomImageAttacher.this;
            ImageView m = zoomImageAttacher.m();
            if (m == null) {
                return;
            }
            Matrix matrix = zoomImageAttacher.t;
            float f = this.h;
            float f2 = this.f20932c;
            float f3 = this.f;
            matrix.postScale(f, f, f2, f3);
            zoomImageAttacher.g(true);
            float l = zoomImageAttacher.l();
            float f4 = this.g;
            if ((f > 1.0f && l < f4) || (f < 1.0f && f4 < l)) {
                m.postOnAnimation(this);
                return;
            }
            zoomImageAttacher.n = false;
            float f5 = f4 / l;
            zoomImageAttacher.t.postScale(f5, f5, f2, f3);
            zoomImageAttacher.g(true);
        }
    }

    /* loaded from: classes3.dex */
    public interface AttacherListener {
        void C(RectF rectF, boolean z);

        void D(MotionEvent motionEvent, boolean z);

        boolean k();

        boolean m();

        void t();
    }

    /* loaded from: classes3.dex */
    public class FlingRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final ZoomScroller f20933c;
        public int f;
        public int g;

        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.zoom.ZoomScroller$ZoomOverScroller, com.mycompany.app.zoom.ZoomScroller, java.lang.Object] */
        public FlingRunnable(Context context) {
            ?? obj = new Object();
            obj.f20934a = new OverScroller(context);
            this.f20933c = obj;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZoomImageAttacher zoomImageAttacher = ZoomImageAttacher.this;
            ImageView m = zoomImageAttacher.m();
            if (m != null) {
                ZoomScroller zoomScroller = this.f20933c;
                if (!((ZoomScroller.ZoomOverScroller) zoomScroller).f20934a.computeScrollOffset()) {
                    return;
                }
                int currX = ((ZoomScroller.ZoomOverScroller) zoomScroller).f20934a.getCurrX();
                int currY = ((ZoomScroller.ZoomOverScroller) zoomScroller).f20934a.getCurrY();
                zoomImageAttacher.t.postTranslate(this.f - currX, this.g - currY);
                zoomImageAttacher.t(zoomImageAttacher.i(), true);
                this.f = currX;
                this.g = currY;
                m.postOnAnimation(this);
            }
        }
    }

    public ZoomImageAttacher(ImageView imageView, AttacherListener attacherListener) {
        this.r = new Matrix();
        this.s = new Matrix();
        this.t = new Matrix();
        this.u = new RectF();
        this.v = new float[9];
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
        this.w = scaleType;
        this.B = 0;
        n(imageView, scaleType, attacherListener);
    }

    @Override // com.mycompany.app.zoom.ZoomGestureDetector.OnGestureListener
    public final void a(float f, float f2, float f3) {
        if (!this.x && !this.y && m() != null) {
            float l = l();
            Matrix matrix = this.t;
            if (l > 100.0f) {
                matrix.postScale(0.99f, 0.99f, f2, f3);
                g(true);
            } else if (l > 0.01f) {
                matrix.postScale(f, f, f2, f3);
                g(true);
            }
        }
    }

    @Override // com.mycompany.app.zoom.ZoomGestureDetector.OnGestureListener
    public final void b(float f, float f2) {
        int i;
        ImageView m = m();
        if (m != null) {
            this.t.postTranslate(f, f2);
            g(true);
            if (this.z && ((i = this.B) == 0 || ((i == 1 && f >= 1.0f) || (i == 2 && f <= -1.0f)))) {
                ViewParent parent = m.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(false);
                    return;
                }
                return;
            }
            this.o = true;
        }
    }

    @Override // com.mycompany.app.zoom.ZoomGestureDetector.OnGestureListener
    public final void c(float f, float f2) {
        ImageView m;
        int i;
        int i2;
        int i3;
        int i4;
        if (!this.x && !this.y && (m = m()) != null) {
            FlingRunnable flingRunnable = new FlingRunnable(m.getContext());
            this.q = flingRunnable;
            int width = m.getWidth();
            int height = m.getHeight();
            int round = Math.round(f);
            int round2 = Math.round(f2);
            h();
            RectF j = j(i());
            if (j != null) {
                int round3 = Math.round(-j.left);
                int round4 = Math.round(-j.top);
                float f3 = width;
                if (f3 < j.width()) {
                    i = Math.round(j.width() - f3);
                    i2 = 0;
                } else {
                    i = round3;
                    i2 = i;
                }
                float f4 = height;
                if (f4 < j.height()) {
                    i4 = Math.round(j.height() - f4);
                    i3 = 0;
                } else {
                    i3 = round4;
                    i4 = i3;
                }
                flingRunnable.f = round3;
                flingRunnable.g = round4;
                if (round3 != i || round4 != i4) {
                    this.p = true;
                    ((ZoomScroller.ZoomOverScroller) flingRunnable.f20933c).f20934a.fling(round3, round4, round, round2, i2, i, i3, i4, 0, 0);
                }
            }
            m.post(this.q);
        }
    }

    public final void d() {
        this.p = false;
        FlingRunnable flingRunnable = this.q;
        if (flingRunnable != null) {
            ((ZoomScroller.ZoomOverScroller) flingRunnable.f20933c).f20934a.forceFinished(true);
            this.q = null;
        }
    }

    public final void e() {
        ImageView m;
        float f;
        if (!this.n && (m = m()) != null) {
            RectF rectF = this.u;
            if (rectF == null) {
                rectF = null;
            }
            if (rectF != null) {
                float f2 = rectF.right - rectF.left;
                float f3 = rectF.bottom - rectF.top;
                if (Float.compare(f2, 0.0f) != 0 && Float.compare(f3, 0.0f) != 0) {
                    float width = m.getWidth();
                    float height = m.getHeight();
                    if (width / f2 > height / f3) {
                        f = (f3 * width) / (f2 * height);
                    } else {
                        f = (f2 * height) / (f3 * width);
                    }
                    float f4 = f;
                    float l = l();
                    if (Float.compare(l, f4) != 0) {
                        d();
                        this.n = true;
                        m.post(new AnimatedZoomRunnable(l, f4, width / 2.0f, height / 2.0f));
                    }
                }
            }
        }
    }

    public final void f() {
        ImageView m;
        if (!this.n && (m = m()) != null) {
            float l = l();
            if (l <= 1.0f && l >= 0.9f) {
                return;
            }
            d();
            this.n = true;
            m.post(new AnimatedZoomRunnable(l, 1.0f, m.getWidth() / 2, m.getHeight() / 2));
        }
    }

    public final void g(boolean z) {
        h();
        t(i(), z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x008c, code lost:
    
        if (r1 < r0) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            r9 = this;
            android.widget.ImageView r0 = r9.m()
            if (r0 != 0) goto L7
            goto L11
        L7:
            android.graphics.Matrix r1 = r9.i()
            android.graphics.RectF r1 = r9.j(r1)
            if (r1 != 0) goto L12
        L11:
            return
        L12:
            float r2 = r1.width()
            float r3 = r1.height()
            int r4 = r0.getWidth()
            int r0 = r0.getHeight()
            float r4 = (float) r4
            int r5 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r6 = 1073741824(0x40000000, float:2.0)
            r7 = 0
            if (r5 > 0) goto L47
            android.widget.ImageView$ScaleType r5 = r9.w
            android.widget.ImageView$ScaleType r8 = android.widget.ImageView.ScaleType.FIT_START
            if (r5 != r8) goto L34
            float r2 = r1.left
            float r2 = -r2
            goto L43
        L34:
            android.widget.ImageView$ScaleType r8 = android.widget.ImageView.ScaleType.FIT_END
            if (r5 != r8) goto L3e
            float r4 = r4 - r2
            float r2 = r1.left
        L3b:
            float r2 = r4 - r2
            goto L43
        L3e:
            float r4 = r4 - r2
            float r4 = r4 / r6
            float r2 = r1.left
            goto L3b
        L43:
            r4 = 0
            r9.B = r4
            goto L62
        L47:
            float r2 = r1.left
            int r5 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r5 <= 0) goto L52
            float r2 = -r2
            r4 = 1
            r9.B = r4
            goto L62
        L52:
            float r2 = r1.right
            int r5 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r5 >= 0) goto L5e
            float r2 = r4 - r2
            r4 = 2
            r9.B = r4
            goto L62
        L5e:
            r2 = -1
            r9.B = r2
            r2 = r7
        L62:
            float r0 = (float) r0
            int r4 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r4 > 0) goto L80
            android.widget.ImageView$ScaleType r4 = r9.w
            android.widget.ImageView$ScaleType r5 = android.widget.ImageView.ScaleType.FIT_START
            if (r4 != r5) goto L71
            float r0 = r1.top
            float r7 = -r0
            goto L8f
        L71:
            android.widget.ImageView$ScaleType r5 = android.widget.ImageView.ScaleType.FIT_END
            if (r4 != r5) goto L7b
            float r0 = r0 - r3
            float r1 = r1.top
        L78:
            float r7 = r0 - r1
            goto L8f
        L7b:
            float r0 = r0 - r3
            float r0 = r0 / r6
            float r1 = r1.top
            goto L78
        L80:
            float r3 = r1.top
            int r4 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r4 <= 0) goto L88
            float r7 = -r3
            goto L8f
        L88:
            float r1 = r1.bottom
            int r3 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r3 >= 0) goto L8f
            goto L78
        L8f:
            android.graphics.Matrix r0 = r9.t
            r0.postTranslate(r2, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.zoom.ZoomImageAttacher.h():void");
    }

    public final Matrix i() {
        Matrix matrix = this.r;
        Matrix matrix2 = this.s;
        matrix2.set(matrix);
        matrix2.postConcat(this.t);
        return matrix2;
    }

    public final RectF j(Matrix matrix) {
        Drawable drawable;
        ViewGroup viewGroup;
        int width;
        ImageView m = m();
        if (m == null || (drawable = m.getDrawable()) == null) {
            return null;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        RectF rectF = this.u;
        rectF.set(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        matrix.mapRect(rectF);
        m.getContext();
        if (m.getHeight() > k()) {
            float k = k();
            ViewGroup viewGroup2 = this.f20930c;
            if (viewGroup2 != null) {
                width = viewGroup2.getWidth();
            } else {
                ImageView imageView = this.f;
                if (imageView == null || (viewGroup = (ViewGroup) imageView.getParent()) == null) {
                    width = 0;
                } else {
                    width = viewGroup.getWidth();
                }
            }
            float f = k / width;
            float f2 = rectF.right - rectF.left;
            float f3 = rectF.bottom - rectF.top;
            rectF.bottom = rectF.top + f3 + ((f3 - (f2 * f)) / l());
        }
        return rectF;
    }

    public final int k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2 = this.f20930c;
        if (viewGroup2 != null) {
            return viewGroup2.getHeight();
        }
        ImageView imageView = this.f;
        if (imageView == null || (viewGroup = (ViewGroup) imageView.getParent()) == null) {
            return 0;
        }
        return viewGroup.getHeight();
    }

    public final float l() {
        Matrix matrix = this.t;
        float[] fArr = this.v;
        matrix.getValues(fArr);
        return fArr[0];
    }

    public final ImageView m() {
        ImageView imageView;
        WeakReference weakReference = this.g;
        if (weakReference != null) {
            imageView = (ImageView) weakReference.get();
        } else {
            imageView = null;
        }
        if (imageView == null) {
            r();
        }
        return imageView;
    }

    public final void n(ImageView imageView, ImageView.ScaleType scaleType, AttacherListener attacherListener) {
        this.f = imageView;
        this.w = scaleType;
        this.g = new WeakReference(imageView);
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        imageView.setOnTouchListener(this);
        imageView.getViewTreeObserver().addOnGlobalLayoutListener(this);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.zoom.ZoomImageAttacher.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
                ZoomImageAttacher.this.getClass();
            }
        });
        this.h = gestureDetector;
        gestureDetector.setOnDoubleTapListener(this);
        ZoomGestureDetector.FroyoDetector froyoDetector = new ZoomGestureDetector.FroyoDetector(imageView.getContext());
        froyoDetector.f20927a = this;
        this.i = froyoDetector;
        this.j = attacherListener;
        s(imageView);
    }

    public final boolean o() {
        ImageView m;
        RectF rectF;
        if (!q() && (m = m()) != null && m.getHeight() > k() && (rectF = this.u) != null) {
            float f = rectF.bottom - rectF.top;
            float k = k();
            if (f >= k) {
                if (Math.abs(rectF.bottom + rectF.top) < k + 1.0f) {
                    return true;
                }
                return false;
            }
            if (Math.abs(rectF.bottom + ((k - f) / 2.0f)) < k + 1.0f) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        float f;
        ImageView m;
        if (m() != null) {
            AttacherListener attacherListener = this.j;
            if (attacherListener != null) {
                attacherListener.t();
            }
            if (this.k) {
                ImageView m2 = m();
                f = -1.0f;
                if (m2 != null) {
                    RectF rectF = this.u;
                    if (rectF == null) {
                        rectF = null;
                    }
                    if (rectF != null) {
                        float f2 = rectF.right - rectF.left;
                        float f3 = rectF.bottom - rectF.top;
                        if (Float.compare(f2, 0.0f) != 0 && Float.compare(f3, 0.0f) != 0) {
                            float width = m2.getWidth();
                            float height = m2.getHeight();
                            f = width / f2 > height / f3 ? (width * f3) / (f2 * height) : (height * f2) / (f3 * width);
                        }
                    }
                }
            } else {
                f = 2.0f;
            }
            if (f - l() <= 0.01f) {
                f = 1.0f;
            }
            float f4 = f;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (!this.x && !this.y && (m = m()) != null) {
                this.n = true;
                m.post(new AnimatedZoomRunnable(l(), f4, x, y));
            }
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ImageView m = m();
        if (m != null) {
            int left = m.getLeft();
            int right = m.getRight();
            int top = m.getTop();
            int bottom = m.getBottom();
            if (left != this.C || right != this.D || top != this.E || bottom != this.F) {
                if (this.A && l() > 1.0f) {
                    return;
                }
                this.A = true;
                s(m);
                this.C = left;
                this.D = right;
                this.E = top;
                this.F = bottom;
            }
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        AttacherListener attacherListener = this.j;
        if (attacherListener != null && attacherListener.k()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0095  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L4
            return r0
        L4:
            int r1 = r11.getActionMasked()
            r2 = 1
            if (r1 == 0) goto L56
            if (r1 == r2) goto L22
            r3 = 3
            if (r1 == r3) goto L22
            r10 = 5
            if (r1 == r10) goto L15
        L13:
            r4 = r9
            goto L77
        L15:
            com.mycompany.app.zoom.ZoomImageAttacher$AttacherListener r10 = r9.j
            if (r10 == 0) goto L1f
            boolean r10 = r10.m()
            if (r10 != 0) goto L13
        L1f:
            r9.m = r2
            goto L13
        L22:
            r9.l = r0
            r9.o = r0
            float r1 = r9.l()
            r3 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 >= 0) goto L13
            r9.h()
            android.graphics.Matrix r1 = r9.i()
            android.graphics.RectF r1 = r9.j(r1)
            if (r1 == 0) goto L13
            com.mycompany.app.zoom.ZoomImageAttacher$AnimatedZoomRunnable r3 = new com.mycompany.app.zoom.ZoomImageAttacher$AnimatedZoomRunnable
            float r5 = r9.l()
            float r7 = r1.centerX()
            float r8 = r1.centerY()
            r6 = 1065353216(0x3f800000, float:1.0)
            r4 = r9
            r3.<init>(r5, r6, r7, r8)
            r10.post(r3)
            r10 = r2
            goto L78
        L56:
            r4 = r9
            com.mycompany.app.zoom.ZoomImageAttacher$AttacherListener r1 = r4.j
            if (r1 == 0) goto L61
            boolean r1 = r1.m()
            if (r1 != 0) goto L63
        L61:
            r4.l = r2
        L63:
            r4.m = r0
            r4.o = r0
            boolean r1 = r4.z
            if (r1 == 0) goto L74
            android.view.ViewParent r10 = r10.getParent()
            if (r10 == 0) goto L74
            r10.requestDisallowInterceptTouchEvent(r2)
        L74:
            r9.d()
        L77:
            r10 = r0
        L78:
            com.mycompany.app.zoom.ZoomImageAttacher$AttacherListener r1 = r4.j
            if (r1 == 0) goto L82
            boolean r1 = r1.m()
            if (r1 != 0) goto L96
        L82:
            android.view.GestureDetector r1 = r4.h
            if (r1 == 0) goto L8d
            boolean r1 = r1.onTouchEvent(r11)
            if (r1 == 0) goto L8d
            r10 = r2
        L8d:
            com.mycompany.app.zoom.ZoomGestureDetector r1 = r4.i
            if (r1 == 0) goto L95
            r1.a(r11)
            goto L96
        L95:
            r2 = r10
        L96:
            com.mycompany.app.zoom.ZoomImageAttacher$AttacherListener r10 = r4.j
            if (r10 == 0) goto Laa
            boolean r1 = r4.m
            if (r1 != 0) goto Laa
            boolean r1 = r4.n
            if (r1 != 0) goto Laa
            boolean r1 = r4.p
            if (r1 == 0) goto La7
            goto Laa
        La7:
            r10.D(r11, r0)
        Laa:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.zoom.ZoomImageAttacher.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public final boolean p() {
        ImageView m;
        RectF rectF;
        if (!q() && (m = m()) != null && m.getHeight() > k() && (rectF = this.u) != null) {
            float f = rectF.bottom - rectF.top;
            float k = k();
            if (f >= k) {
                if (Math.abs(rectF.top) < 1.0f) {
                    return true;
                }
                return false;
            }
            if (Math.abs(rectF.top - ((k - f) / 2.0f)) < 1.0f) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean q() {
        float l = l();
        if (l <= 1.0f && l >= 0.9f) {
            return false;
        }
        return true;
    }

    public final void r() {
        this.f20930c = null;
        this.f = null;
        WeakReference weakReference = this.g;
        if (weakReference != null) {
            ImageView imageView = (ImageView) weakReference.get();
            if (imageView != null) {
                imageView.setOnTouchListener(null);
                imageView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            this.g = null;
        }
        this.h = null;
        this.i = null;
        this.j = null;
    }

    public final void s(ImageView imageView) {
        Drawable drawable;
        if (imageView != null && (drawable = imageView.getDrawable()) != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth != 0 && intrinsicHeight != 0) {
                float width = imageView.getWidth();
                float height = imageView.getHeight();
                float f = intrinsicWidth;
                float f2 = width / f;
                float f3 = intrinsicHeight;
                float f4 = height / f3;
                Matrix matrix = this.r;
                matrix.reset();
                ImageView.ScaleType scaleType = this.w;
                if (scaleType == ImageView.ScaleType.CENTER) {
                    matrix.postTranslate((width - f) / 2.0f, (height - f3) / 2.0f);
                } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                    float max = Math.max(f2, f4);
                    matrix.postScale(max, max);
                    matrix.postTranslate((width - (f * max)) / 2.0f, (height - (f3 * max)) / 2.0f);
                } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
                    float min = Math.min(1.0f, Math.min(f2, f4));
                    matrix.postScale(min, min);
                    matrix.postTranslate((width - (f * min)) / 2.0f, (height - (f3 * min)) / 2.0f);
                } else {
                    RectF rectF = new RectF(0.0f, 0.0f, f, f3);
                    RectF rectF2 = new RectF(0.0f, 0.0f, width, height);
                    ImageView.ScaleType scaleType2 = this.w;
                    if (scaleType2 == ImageView.ScaleType.FIT_CENTER) {
                        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
                    } else if (scaleType2 == ImageView.ScaleType.FIT_START) {
                        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
                    } else if (scaleType2 == ImageView.ScaleType.FIT_END) {
                        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
                    } else if (scaleType2 == ImageView.ScaleType.FIT_XY) {
                        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                    }
                }
                this.t.reset();
                g(false);
            }
        }
    }

    public final void t(Matrix matrix, boolean z) {
        AttacherListener attacherListener;
        ImageView m = m();
        if (m != null && m.getScaleType() == ImageView.ScaleType.MATRIX) {
            m.setImageMatrix(matrix);
            if (!this.x && !this.y && (attacherListener = this.j) != null) {
                attacherListener.C(j(matrix), z);
            }
        }
    }

    public final void u() {
        ImageView m = m();
        if (m == null) {
            return;
        }
        m.setScaleType(ImageView.ScaleType.MATRIX);
        s(m);
    }

    public ZoomImageAttacher(MainImageView mainImageView, AttacherListener attacherListener) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
        this.r = new Matrix();
        this.s = new Matrix();
        this.t = new Matrix();
        this.u = new RectF();
        this.v = new float[9];
        this.w = ImageView.ScaleType.FIT_CENTER;
        this.B = 0;
        n(mainImageView, scaleType, attacherListener);
    }

    public ZoomImageAttacher(ImageView imageView, AttacherListener attacherListener, int i) {
        this.r = new Matrix();
        this.s = new Matrix();
        this.t = new Matrix();
        this.u = new RectF();
        this.v = new float[9];
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
        this.w = scaleType;
        this.B = 0;
        this.k = true;
        n(imageView, scaleType, attacherListener);
    }
}
