package com.mycompany.app.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class CropImageView extends ImageView {

    /* renamed from: c, reason: collision with root package name */
    public Paint f12877c;
    public Paint f;
    public Paint g;
    public Paint h;
    public final float i;
    public final float j;
    public final float k;
    public final float l;
    public final float m;
    public final float n;
    public RectF o;
    public PointF p;
    public Handle q;
    public boolean r;
    public int s;
    public int t;
    public boolean u;

    public CropImageView(Context context) {
        super(context);
        this.u = true;
        this.r = false;
        this.s = 1;
        this.t = 1;
        float f = MainApp.E1;
        float f2 = f / 8.0f;
        this.l = f2;
        this.k = f - f2;
        this.i = MainUtil.G(context, 24.0f);
        float f3 = this.l;
        this.n = f3;
        this.j = f3;
        Paint paint = new Paint();
        this.f12877c = paint;
        paint.setAntiAlias(true);
        Paint paint2 = this.f12877c;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.f12877c.setStrokeWidth(this.n);
        this.f12877c.setColor(1895825407);
        Paint paint3 = new Paint();
        this.h = paint3;
        paint3.setAntiAlias(true);
        this.h.setStyle(Paint.Style.FILL);
        this.h.setColor(-1342177280);
        float f4 = this.k / 4.0f;
        this.m = f4 / 4.0f;
        Paint paint4 = new Paint();
        this.f = paint4;
        paint4.setAntiAlias(true);
        this.f.setStyle(style);
        this.f.setStrokeWidth(f4);
        this.f.setColor(-1342177280);
        Paint paint5 = new Paint();
        this.g = paint5;
        paint5.setAntiAlias(true);
        this.g.setStyle(style);
        this.g.setStrokeWidth(f4 - this.m);
        this.g.setColor(-1);
        this.p = new PointF();
    }

    private RectF getBitmapRect() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == 0 || intrinsicHeight == 0) {
            return null;
        }
        float[] fArr = new float[9];
        getImageMatrix().getValues(fArr);
        float f = fArr[0];
        float f2 = fArr[4];
        float f3 = fArr[2];
        float paddingTop = fArr[5] + getPaddingTop();
        float f4 = intrinsicWidth * f;
        float f5 = intrinsicHeight * f2;
        float max = Math.max(f3, 0.0f);
        float max2 = Math.max(paddingTop, getPaddingTop());
        return new RectF(max, max2, Math.min(f4 + max, getWidth()), Math.min(f5 + max2, getHeight() - getPaddingBottom()));
    }

    private float getTargetAspectRatio() {
        return this.s / this.t;
    }

    public final void a(RectF rectF, boolean z) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        if (rectF == null) {
            return;
        }
        if (this.r) {
            if (rectF.width() / rectF.height() > getTargetAspectRatio()) {
                float targetAspectRatio = (getTargetAspectRatio() * rectF.height()) / 2.0f;
                f = rectF.centerX() - targetAspectRatio;
                f2 = rectF.top;
                f3 = rectF.centerX() + targetAspectRatio;
                f4 = rectF.bottom;
            } else {
                float width = (rectF.width() / getTargetAspectRatio()) / 2.0f;
                float f7 = rectF.left;
                float centerY = rectF.centerY() - width;
                f3 = rectF.right;
                f4 = rectF.centerY() + width;
                f = f7;
                f2 = centerY;
            }
        } else {
            f = rectF.left;
            f2 = rectF.top;
            f3 = rectF.right;
            f4 = rectF.bottom;
        }
        if (z) {
            f5 = 0.0f;
            f6 = 0.0f;
        } else {
            f5 = (f3 - f) * 0.1f;
            f6 = 0.1f * (f4 - f2);
        }
        Edge.f.f12878c = f + f5;
        Edge.g.f12878c = f2 + f6;
        Edge.h.f12878c = f3 - f5;
        Edge.i.f12878c = f4 - f6;
    }

    public Bitmap getCroppedImage() {
        Drawable drawable = getDrawable();
        if (drawable != null && (drawable instanceof BitmapDrawable)) {
            float[] fArr = new float[9];
            getImageMatrix().getValues(fArr);
            int i = 0;
            float f = fArr[0];
            float f2 = fArr[4];
            float f3 = fArr[2];
            float paddingTop = fArr[5] + getPaddingTop();
            if (f3 < 0.0f) {
                f3 = 0.0f;
            }
            if (paddingTop < getPaddingTop()) {
                paddingTop = getPaddingTop();
            }
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (MainUtil.f6(bitmap)) {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                Edge edge = Edge.f;
                int round = Math.round((edge.f12878c - f3) / f);
                Edge edge2 = Edge.g;
                int round2 = Math.round((edge2.f12878c - paddingTop) / f2);
                if (round < 0 || round >= width) {
                    round = 0;
                }
                if (round2 >= 0 && round2 < height) {
                    i = round2;
                }
                int round3 = Math.round(Math.min((Edge.h.f12878c - edge.f12878c) / f, width - round));
                int round4 = Math.round(Math.min((Edge.i.f12878c - edge2.f12878c) / f2, height - i));
                if (round3 <= 0) {
                    round3 = 1;
                }
                if (round + round3 <= width) {
                    if (round4 <= 0) {
                        round4 = 1;
                    }
                    if (i + round4 <= height) {
                        try {
                            return Bitmap.createBitmap(bitmap, round, i, round3, round4);
                        } catch (Exception | OutOfMemoryError unused) {
                            return null;
                        }
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.u) {
            return;
        }
        super.invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.u) {
            try {
                super.onDraw(canvas);
            } catch (Exception unused) {
            }
            if (this.o == null) {
                RectF bitmapRect = getBitmapRect();
                this.o = bitmapRect;
                if (bitmapRect != null) {
                    a(bitmapRect, false);
                } else {
                    return;
                }
            }
            RectF rectF = this.o;
            Edge edge = Edge.i;
            Edge edge2 = Edge.h;
            Edge edge3 = Edge.g;
            Edge edge4 = Edge.f;
            if (rectF != null && this.g != null) {
                float f = edge4.f12878c;
                float f2 = edge3.f12878c;
                float f3 = edge2.f12878c;
                float f4 = edge.f12878c;
                canvas.drawRect(rectF.left, rectF.top, rectF.right, f2, this.h);
                canvas.drawRect(rectF.left, f4, rectF.right, rectF.bottom, this.h);
                canvas.drawRect(rectF.left, f2, f, f4, this.h);
                canvas.drawRect(f3, f2, rectF.right, f4, this.h);
            }
            Paint paint = this.f12877c;
            if (paint != null) {
                canvas.drawRect(edge4.f12878c, edge3.f12878c, edge2.f12878c, edge.f12878c, paint);
            }
            if (this.g != null) {
                float f5 = edge4.f12878c;
                float f6 = edge3.f12878c;
                float f7 = edge2.f12878c;
                float f8 = edge.f12878c;
                Paint paint2 = this.f;
                if (paint2 != null) {
                    canvas.drawLine(f5, f6 - this.l, f5, f6 + this.k, paint2);
                    canvas.drawLine(f5 - this.l, f6, f5 + this.k, f6, this.f);
                    canvas.drawLine(f7, f6 - this.l, f7, f6 + this.k, this.f);
                    canvas.drawLine(f7 + this.l, f6, f7 - this.k, f6, this.f);
                    canvas.drawLine(f5, f8 + this.l, f5, f8 - this.k, this.f);
                    canvas.drawLine(f5 - this.l, f8, f5 + this.k, f8, this.f);
                    canvas.drawLine(f7, f8 + this.l, f7, f8 - this.k, this.f);
                    canvas.drawLine(f7 + this.l, f8, f7 - this.k, f8, this.f);
                }
                float f9 = this.l - this.m;
                float f10 = this.k - (f9 / 2.0f);
                float f11 = f6 - f9;
                float f12 = f6 + f10;
                canvas.drawLine(f5, f11, f5, f12, this.g);
                float f13 = f5 - f9;
                float f14 = f5 + f10;
                canvas.drawLine(f13, f6, f14, f6, this.g);
                canvas.drawLine(f7, f11, f7, f12, this.g);
                float f15 = f7 + f9;
                float f16 = f7 - f10;
                canvas.drawLine(f15, f6, f16, f6, this.g);
                float f17 = f8 + f9;
                float f18 = f8 - f10;
                canvas.drawLine(f5, f17, f5, f18, this.g);
                canvas.drawLine(f13, f8, f14, f8, this.g);
                canvas.drawLine(f7, f17, f7, f18, this.g);
                canvas.drawLine(f15, f8, f16, f8, this.g);
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.o = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        if (r0 != 3) goto L12;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.crop.CropImageView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setFixedAspectRatio(boolean z) {
        this.r = z;
        requestLayout();
    }
}
