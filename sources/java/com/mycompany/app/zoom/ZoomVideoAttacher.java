package com.mycompany.app.zoom;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.widget.OverScroller;
import com.mycompany.app.zoom.ZoomGestureDetector;
import com.mycompany.app.zoom.ZoomScroller;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class ZoomVideoAttacher implements View.OnTouchListener, ZoomGestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {

    /* renamed from: c, reason: collision with root package name */
    public WeakReference f20935c;
    public GestureDetector f;
    public ZoomGestureDetector g;
    public VideoAttacherListener h;
    public int i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public FlingRunnable r;
    public final Matrix s = new Matrix();
    public final Matrix t = new Matrix();
    public final Matrix u = new Matrix();
    public final RectF v = new RectF();
    public final float[] w = new float[9];

    /* renamed from: com.mycompany.app.zoom.ZoomVideoAttacher$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends GestureDetector.SimpleOnGestureListener {
    }

    /* loaded from: classes3.dex */
    public class AnimatedZoomRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final float f20936c;
        public final float f;
        public final float g;
        public final float h;

        public AnimatedZoomRunnable(float f, float f2, float f3, float f4) {
            this.g = f2;
            this.f20936c = f3;
            this.f = f4;
            if (f < f2) {
                this.h = 1.07f;
            } else {
                this.h = 0.93f;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZoomVideoAttacher zoomVideoAttacher = ZoomVideoAttacher.this;
            TextureView i = zoomVideoAttacher.i();
            if (i == null) {
                return;
            }
            Matrix matrix = zoomVideoAttacher.u;
            float f = this.h;
            float f2 = this.f20936c;
            float f3 = this.f;
            matrix.postScale(f, f, f2, f3);
            zoomVideoAttacher.d();
            float h = zoomVideoAttacher.h();
            float f4 = this.g;
            if ((f > 1.0f && h < f4) || (f < 1.0f && f4 < h)) {
                i.postOnAnimation(this);
                return;
            }
            zoomVideoAttacher.p = false;
            float f5 = f4 / h;
            zoomVideoAttacher.u.postScale(f5, f5, f2, f3);
            zoomVideoAttacher.d();
        }
    }

    /* loaded from: classes3.dex */
    public class FlingRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final ZoomScroller f20937c;
        public int f;
        public int g;

        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.zoom.ZoomScroller$ZoomOverScroller, com.mycompany.app.zoom.ZoomScroller, java.lang.Object] */
        public FlingRunnable(Context context) {
            ?? obj = new Object();
            obj.f20934a = new OverScroller(context);
            this.f20937c = obj;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZoomVideoAttacher zoomVideoAttacher = ZoomVideoAttacher.this;
            TextureView i = zoomVideoAttacher.i();
            if (i != null) {
                ZoomScroller.ZoomOverScroller zoomOverScroller = (ZoomScroller.ZoomOverScroller) this.f20937c;
                if (!zoomOverScroller.f20934a.computeScrollOffset()) {
                    return;
                }
                int currX = zoomOverScroller.f20934a.getCurrX();
                int currY = zoomOverScroller.f20934a.getCurrY();
                zoomVideoAttacher.u.postTranslate(this.f - currX, this.g - currY);
                Matrix f = zoomVideoAttacher.f();
                TextureView i2 = zoomVideoAttacher.i();
                if (i2 != null) {
                    i2.setTransform(f);
                    i2.invalidate();
                    VideoAttacherListener videoAttacherListener = zoomVideoAttacher.h;
                    if (videoAttacherListener != null) {
                        videoAttacherListener.K(zoomVideoAttacher.g(f));
                    }
                }
                this.f = currX;
                this.g = currY;
                i.postOnAnimation(this);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface VideoAttacherListener {
        void K(RectF rectF);

        boolean k();

        boolean m();

        void q();

        void x(MotionEvent motionEvent);
    }

    public ZoomVideoAttacher(TextureView textureView, VideoAttacherListener videoAttacherListener) {
        this.f20935c = new WeakReference(textureView);
        textureView.setOnTouchListener(this);
        GestureDetector gestureDetector = new GestureDetector(textureView.getContext(), new GestureDetector.SimpleOnGestureListener());
        this.f = gestureDetector;
        gestureDetector.setOnDoubleTapListener(this);
        ZoomGestureDetector.FroyoDetector froyoDetector = new ZoomGestureDetector.FroyoDetector(textureView.getContext());
        froyoDetector.f20927a = this;
        this.g = froyoDetector;
        this.h = videoAttacherListener;
    }

    @Override // com.mycompany.app.zoom.ZoomGestureDetector.OnGestureListener
    public final void a(float f, float f2, float f3) {
        if (this.i != 0 && this.j != 0 && i() != null) {
            float h = h();
            Matrix matrix = this.u;
            if (h > 100.0f) {
                matrix.postScale(0.9f, 0.9f, f2, f3);
                d();
            } else if (h > 0.01f) {
                matrix.postScale(f, f, f2, f3);
                d();
            }
        }
    }

    @Override // com.mycompany.app.zoom.ZoomGestureDetector.OnGestureListener
    public final void b(float f, float f2) {
        if (i() == null) {
            return;
        }
        this.u.postTranslate(f, f2);
        d();
    }

    @Override // com.mycompany.app.zoom.ZoomGestureDetector.OnGestureListener
    public final void c(float f, float f2) {
        int i;
        int i2;
        int i3;
        int i4;
        TextureView i5 = i();
        if (i5 == null) {
            return;
        }
        FlingRunnable flingRunnable = new FlingRunnable(i5.getContext());
        this.r = flingRunnable;
        int width = i5.getWidth();
        int height = i5.getHeight();
        int round = Math.round(f);
        int round2 = Math.round(f2);
        e();
        RectF g = g(f());
        if (g != null) {
            int round3 = Math.round(-g.left);
            int round4 = Math.round(-g.top);
            float f3 = width;
            if (f3 < g.width()) {
                i = Math.round(g.width() - f3);
                i2 = 0;
            } else {
                i = round3;
                i2 = i;
            }
            float f4 = height;
            if (f4 < g.height()) {
                i4 = Math.round(g.height() - f4);
                i3 = 0;
            } else {
                i3 = round4;
                i4 = i3;
            }
            flingRunnable.f = round3;
            flingRunnable.g = round4;
            if (round3 != i || round4 != i4) {
                this.q = true;
                ((ZoomScroller.ZoomOverScroller) flingRunnable.f20937c).f20934a.fling(round3, round4, round, round2, i2, i, i3, i4, 0, 0);
            }
        }
        i5.post(this.r);
    }

    public final void d() {
        e();
        Matrix f = f();
        TextureView i = i();
        if (i != null) {
            i.setTransform(f);
            i.invalidate();
            VideoAttacherListener videoAttacherListener = this.h;
            if (videoAttacherListener != null) {
                videoAttacherListener.K(g(f));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
    
        if (r1 < r0) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e() {
        /*
            r8 = this;
            android.view.TextureView r0 = r8.i()
            if (r0 != 0) goto L7
            goto L11
        L7:
            android.graphics.Matrix r1 = r8.f()
            android.graphics.RectF r1 = r8.g(r1)
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
            if (r5 > 0) goto L30
            float r4 = r4 - r2
            float r4 = r4 / r6
            float r2 = r1.left
        L2e:
            float r4 = r4 - r2
            goto L40
        L30:
            float r2 = r1.left
            int r5 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r5 <= 0) goto L38
            float r4 = -r2
            goto L40
        L38:
            float r2 = r1.right
            int r5 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r5 >= 0) goto L3f
            goto L2e
        L3f:
            r4 = r7
        L40:
            float r0 = (float) r0
            int r2 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r2 > 0) goto L4c
            float r0 = r0 - r3
            float r0 = r0 / r6
            float r1 = r1.top
        L49:
            float r7 = r0 - r1
            goto L5b
        L4c:
            float r2 = r1.top
            int r3 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r3 <= 0) goto L54
            float r7 = -r2
            goto L5b
        L54:
            float r1 = r1.bottom
            int r2 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r2 >= 0) goto L5b
            goto L49
        L5b:
            android.graphics.Matrix r0 = r8.u
            r0.postTranslate(r4, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.zoom.ZoomVideoAttacher.e():void");
    }

    public final Matrix f() {
        Matrix matrix = this.s;
        Matrix matrix2 = this.t;
        matrix2.set(matrix);
        matrix2.postConcat(this.u);
        return matrix2;
    }

    public final RectF g(Matrix matrix) {
        TextureView i;
        if (this.i == 0 || this.j == 0 || (i = i()) == null) {
            return null;
        }
        float width = i.getWidth();
        float height = i.getHeight();
        RectF rectF = this.v;
        rectF.set(0.0f, 0.0f, width, height);
        matrix.mapRect(rectF);
        return rectF;
    }

    public final float h() {
        Matrix matrix = this.u;
        float[] fArr = this.w;
        matrix.getValues(fArr);
        return fArr[0];
    }

    public final TextureView i() {
        TextureView textureView;
        WeakReference weakReference = this.f20935c;
        if (weakReference != null) {
            textureView = (TextureView) weakReference.get();
        } else {
            textureView = null;
        }
        if (textureView == null) {
            j();
        }
        return textureView;
    }

    public final void j() {
        WeakReference weakReference = this.f20935c;
        if (weakReference != null) {
            TextureView textureView = (TextureView) weakReference.get();
            if (textureView != null) {
                textureView.setOnTouchListener(null);
            }
            this.f20935c = null;
        }
        this.f = null;
        this.g = null;
        this.h = null;
    }

    public final void k(int i, int i2, int i3, boolean z) {
        if (i3 % 180 != 0) {
            i2 = i;
            i = i2;
        }
        if (i != 0 && i2 != 0) {
            TextureView i4 = i();
            if (i4 == null) {
                this.l = 0;
                this.k = 0;
                this.j = 0;
                this.i = 0;
                d();
                return;
            }
            int width = i4.getWidth();
            int height = i4.getHeight();
            if (width != 0 && height != 0) {
                if (!z && i == this.i && i2 == this.j && width == this.k && height == this.l) {
                    return;
                }
                this.i = i;
                this.j = i2;
                this.k = width;
                this.l = height;
                Matrix matrix = this.s;
                matrix.reset();
                matrix.postScale(i / width, i2 / height);
                matrix.postTranslate((width - i) / 2.0f, (height - i2) / 2.0f);
                matrix.postRotate(i3);
                this.u.reset();
                d();
                return;
            }
            this.l = 0;
            this.k = 0;
            this.j = 0;
            this.i = 0;
            d();
            return;
        }
        this.l = 0;
        this.k = 0;
        this.j = 0;
        this.i = 0;
        d();
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        TextureView i;
        if (i() != null && !this.m) {
            float f = 2.0f;
            if (h() >= 2.0f) {
                f = 1.0f;
            }
            float f2 = f;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (this.i != 0 && this.j != 0 && (i = i()) != null) {
                this.p = true;
                i.post(new AnimatedZoomRunnable(h(), f2, x, y));
            }
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        VideoAttacherListener videoAttacherListener = this.h;
        if (videoAttacherListener != null && videoAttacherListener.k()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
        /*
            r10 = this;
            r0 = 0
            if (r11 != 0) goto L4
            return r0
        L4:
            int r1 = r12.getActionMasked()
            r2 = 3
            r3 = 1
            if (r1 == 0) goto L54
            if (r1 == r3) goto L22
            if (r1 == r2) goto L22
            r11 = 5
            if (r1 == r11) goto L15
        L13:
            r5 = r10
            goto L75
        L15:
            com.mycompany.app.zoom.ZoomVideoAttacher$VideoAttacherListener r11 = r10.h
            if (r11 == 0) goto L1f
            boolean r11 = r11.m()
            if (r11 != 0) goto L13
        L1f:
            r10.o = r3
            goto L13
        L22:
            r10.n = r0
            float r1 = r10.h()
            r4 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 >= 0) goto L13
            r10.e()
            android.graphics.Matrix r1 = r10.f()
            android.graphics.RectF r1 = r10.g(r1)
            if (r1 == 0) goto L13
            com.mycompany.app.zoom.ZoomVideoAttacher$AnimatedZoomRunnable r4 = new com.mycompany.app.zoom.ZoomVideoAttacher$AnimatedZoomRunnable
            float r6 = r10.h()
            float r8 = r1.centerX()
            float r9 = r1.centerY()
            r7 = 1065353216(0x3f800000, float:1.0)
            r5 = r10
            r4.<init>(r6, r7, r8, r9)
            r11.post(r4)
            r0 = r3
            goto L75
        L54:
            r5 = r10
            com.mycompany.app.zoom.ZoomVideoAttacher$VideoAttacherListener r11 = r5.h
            if (r11 == 0) goto L5f
            boolean r11 = r11.m()
            if (r11 != 0) goto L61
        L5f:
            r5.n = r3
        L61:
            r5.o = r0
            r5.q = r0
            com.mycompany.app.zoom.ZoomVideoAttacher$FlingRunnable r11 = r5.r
            if (r11 == 0) goto L75
            com.mycompany.app.zoom.ZoomScroller r11 = r11.f20937c
            com.mycompany.app.zoom.ZoomScroller$ZoomOverScroller r11 = (com.mycompany.app.zoom.ZoomScroller.ZoomOverScroller) r11
            android.widget.OverScroller r11 = r11.f20934a
            r11.forceFinished(r3)
            r11 = 0
            r5.r = r11
        L75:
            com.mycompany.app.zoom.ZoomVideoAttacher$VideoAttacherListener r11 = r5.h
            if (r11 == 0) goto L82
            boolean r11 = r11.m()
            if (r11 != 0) goto L80
            goto L82
        L80:
            r0 = r3
            goto L95
        L82:
            android.view.GestureDetector r11 = r5.f
            if (r11 == 0) goto L8d
            boolean r11 = r11.onTouchEvent(r12)
            if (r11 == 0) goto L8d
            r0 = r3
        L8d:
            com.mycompany.app.zoom.ZoomGestureDetector r11 = r5.g
            if (r11 == 0) goto L95
            r11.a(r12)
            goto L80
        L95:
            com.mycompany.app.zoom.ZoomVideoAttacher$VideoAttacherListener r11 = r5.h
            if (r11 == 0) goto Lbb
            boolean r1 = r5.o
            if (r1 != 0) goto Laa
            boolean r1 = r5.p
            if (r1 != 0) goto Laa
            boolean r1 = r5.q
            if (r1 == 0) goto La6
            goto Laa
        La6:
            r11.x(r12)
            return r0
        Laa:
            int r11 = r12.getActionMasked()
            if (r11 == r3) goto Lb6
            int r11 = r12.getActionMasked()
            if (r11 != r2) goto Lbb
        Lb6:
            com.mycompany.app.zoom.ZoomVideoAttacher$VideoAttacherListener r11 = r5.h
            r11.q()
        Lbb:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.zoom.ZoomVideoAttacher.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
