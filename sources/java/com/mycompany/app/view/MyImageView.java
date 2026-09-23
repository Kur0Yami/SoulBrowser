package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.zoom.ZoomImageAttacher;

/* loaded from: classes3.dex */
public class MyImageView extends ImageView {
    public boolean A;
    public boolean B;
    public float C;
    public Paint D;
    public String E;
    public StaticLayout F;
    public ZoomImageAttacher G;
    public Rect H;
    public RectF I;
    public Rect J;
    public RectF K;
    public boolean L;

    /* renamed from: c, reason: collision with root package name */
    public Context f18838c;
    public DrawFailListener f;
    public ImageSizeListener g;
    public int h;
    public boolean i;
    public boolean j;
    public int k;
    public boolean l;
    public int m;
    public boolean n;
    public boolean o;
    public ViewGroup p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public MyProgressDrawable v;
    public boolean w;
    public Drawable x;
    public boolean y;
    public boolean z;

    /* loaded from: classes3.dex */
    public interface DrawFailListener {
        void a();
    }

    public MyImageView(Context context) {
        super(context);
        b(context, 0);
    }

    public static int getErrorIcon() {
        if (PrefImage.C > 0.2f) {
            return R.drawable.outline_error_dark_web_48;
        }
        return R.drawable.outline_error_black_web_48;
    }

    private int getParentHeight() {
        ViewGroup viewGroup = this.p;
        if (viewGroup != null) {
            return viewGroup.getHeight();
        }
        ViewGroup viewGroup2 = (ViewGroup) getParent();
        if (viewGroup2 == null) {
            return 0;
        }
        return viewGroup2.getHeight();
    }

    private int getParentWidth() {
        ViewGroup viewGroup = this.p;
        if (viewGroup != null) {
            return viewGroup.getWidth();
        }
        ViewGroup viewGroup2 = (ViewGroup) getParent();
        if (viewGroup2 == null) {
            return 0;
        }
        return viewGroup2.getWidth();
    }

    private void setFadeInAlpha(boolean z) {
        if (!z) {
            if (this.C > 0.0f) {
                this.C = 0.0f;
                setAlpha(1.0f);
                return;
            }
            return;
        }
        float f = this.C;
        if (f < 1.0f) {
            float f2 = f + 0.1f;
            this.C = f2;
            setAlpha(f2);
            invalidate();
        }
    }

    public final void a(int i, int i2) {
        int i3;
        this.q = i;
        this.r = i2;
        int parentWidth = getParentWidth();
        int parentHeight = getParentHeight();
        int i4 = this.q;
        if (i4 != 0 && (i3 = this.r) != 0) {
            int i5 = this.h;
            if (i5 == 1) {
                if (this.i) {
                    if (this.j && i4 > i3) {
                        float f = i4 / i3;
                        this.t = parentHeight;
                        this.u = parentHeight;
                        int round = Math.round(parentHeight * f);
                        this.s = round;
                        int i6 = parentWidth * 2;
                        if (round > i6) {
                            this.s = i6;
                            this.u = Math.round(i6 / f);
                        }
                        int i7 = this.s;
                        int i8 = this.k;
                        this.s = i8 + i8 + i7;
                        return;
                    }
                    float f2 = i4 / i3;
                    this.t = parentHeight;
                    this.u = parentHeight;
                    int round2 = Math.round(parentHeight * f2);
                    this.s = round2;
                    if (round2 > parentWidth) {
                        this.s = parentWidth;
                        this.u = Math.round(parentWidth / f2);
                    }
                    this.s += this.k;
                    return;
                }
                if (this.j && i4 > i3) {
                    this.t = parentHeight;
                    this.u = parentHeight;
                    int round3 = Math.round(parentHeight * (i4 / i3));
                    int i9 = this.k;
                    this.s = round3 + i9 + i9;
                    return;
                }
                this.t = parentHeight;
                this.u = parentHeight;
                this.s = Math.round(parentHeight * (i4 / i3)) + this.k;
                return;
            }
            if (i5 == 2) {
                if (this.i) {
                    if (this.j && i4 > i3) {
                        float f3 = (i3 * 4) / i4;
                        this.s = parentWidth;
                        this.u = parentWidth;
                        int round4 = Math.round(parentWidth * f3);
                        this.t = round4;
                        int i10 = parentHeight * 2;
                        if (round4 > i10) {
                            this.t = i10;
                            this.u = Math.round(i10 / f3);
                        }
                        int i11 = this.t;
                        int i12 = this.k;
                        this.t = i12 + i12 + i11;
                        return;
                    }
                    float f4 = i3 / i4;
                    this.s = parentWidth;
                    this.u = parentWidth;
                    int round5 = Math.round(parentWidth * f4);
                    this.t = round5;
                    if (round5 > parentHeight) {
                        this.t = parentHeight;
                        this.u = Math.round(parentHeight / f4);
                    }
                    this.t += this.k;
                    return;
                }
                if (this.j && i4 > i3) {
                    this.s = parentWidth;
                    this.u = parentWidth;
                    int round6 = Math.round(parentWidth * ((i3 * 4) / i4));
                    int i13 = this.k;
                    this.t = round6 + i13 + i13;
                    return;
                }
                this.s = parentWidth;
                this.u = parentWidth;
                this.t = Math.round(parentWidth * (i3 / i4)) + this.k;
                return;
            }
            if (!this.i) {
                this.s = parentWidth;
                this.t = Math.max(Math.round(parentWidth * (i3 / i4)), parentHeight);
                return;
            }
            return;
        }
        e(parentWidth, parentHeight);
    }

    public final void b(Context context, int i) {
        int i2;
        this.f18838c = context;
        this.h = i;
        this.i = true;
        this.m = 0;
        float f = MainApp.y1;
        int i3 = -1593835520;
        if (PrefImage.C > 0.2f) {
            i2 = -1577058305;
        } else {
            i2 = -1593835520;
        }
        MyProgressDrawable myProgressDrawable = new MyProgressDrawable(this, f, i2);
        this.v = myProgressDrawable;
        myProgressDrawable.m = true;
        if (PrefImage.C > 0.2f) {
            i3 = -1577058305;
        }
        myProgressDrawable.e(i3);
        Paint paint = new Paint();
        this.D = paint;
        paint.setAntiAlias(true);
        this.D.setFilterBitmap(true);
        int i4 = this.h;
        if (i4 != 1 && i4 != 2) {
            return;
        }
        this.H = new Rect();
        this.I = new RectF();
        this.J = new Rect();
        this.K = new RectF();
    }

    public final boolean c() {
        if (getHeight() > getParentHeight()) {
            return true;
        }
        return false;
    }

    public final void d() {
        Drawable drawable;
        Bitmap bitmap;
        MyProgressDrawable myProgressDrawable = this.v;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.v = null;
        }
        this.g = null;
        this.p = null;
        this.x = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        if (this.f == null && (drawable = getDrawable()) != null && (drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
            bitmap.recycle();
        }
        this.f = null;
    }

    public final void e(int i, int i2) {
        int i3 = this.h;
        if (i3 == 1) {
            this.s = i + this.k;
            this.t = i2;
        } else if (i3 == 2) {
            this.s = i;
            this.t = i2 + this.k;
        } else {
            this.s = i;
            this.t = i2;
        }
    }

    public final void f(int i, String str) {
        boolean z;
        boolean z2;
        int i2;
        int i3;
        if (PrefImage.C > 0.2f) {
            z = true;
        } else {
            z = false;
        }
        if (z != this.z) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.z = z;
        if (!z2 && this.m == i && MainUtil.q5(str, this.E)) {
            return;
        }
        this.m = i;
        this.y = false;
        if (i == 0) {
            this.x = null;
            this.E = null;
            this.F = null;
            return;
        }
        if (!this.n) {
            this.q = 0;
            this.r = 0;
            e(getParentWidth(), getParentHeight());
        }
        if (this.m == 1) {
            this.E = null;
            this.F = null;
            if (z2 || this.x == null) {
                this.x = MainUtil.S(this.f18838c, getErrorIcon());
                this.y = true;
            }
            invalidate();
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.F = null;
        } else if ((z2 || !str.equals(this.E)) && (i2 = this.s - MainApp.i1) > 0) {
            TextPaint textPaint = new TextPaint();
            textPaint.setAntiAlias(true);
            textPaint.setTextSize(MainApp.i1 / 2);
            if (PrefImage.C > 0.2f) {
                i3 = -1;
            } else {
                i3 = -16777216;
            }
            textPaint.setColor(i3);
            textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
            this.F = MainUtil.y3(str, textPaint, i2);
        }
        this.E = str;
        this.x = null;
        invalidate();
    }

    public final void g() {
        if (!c()) {
            return;
        }
        float f = 0.0f;
        float height = getHeight() * 0.0f;
        float parentHeight = getParentHeight() - getHeight();
        if (height <= 0.0f) {
            if (height < parentHeight) {
                f = parentHeight;
            } else {
                f = height;
            }
        }
        setY(f);
    }

    public int getDraw() {
        return this.m;
    }

    public int getImageHeight() {
        return this.r;
    }

    public int getImageWidth() {
        return this.q;
    }

    public float getScrollRatio() {
        ZoomImageAttacher zoomImageAttacher;
        float f;
        float f2 = 0.0f;
        if (!c() || (zoomImageAttacher = this.G) == null) {
            return 0.0f;
        }
        RectF rectF = zoomImageAttacher.u;
        if (rectF == null) {
            f = 0.0f;
        } else {
            f = rectF.top;
        }
        float parentHeight = getParentHeight() - getHeight();
        if (f <= 0.0f) {
            if (f < parentHeight) {
                f2 = parentHeight;
            } else {
                f2 = f;
            }
        }
        return f2 / getHeight();
    }

    public int getViewHeight() {
        int i = this.h;
        if (i == 0 && this.i) {
            return getHeight();
        }
        int i2 = this.t;
        if (i2 != 0) {
            return i2;
        }
        if (i == 2) {
            return getParentHeight() + this.k;
        }
        return getParentHeight();
    }

    public int getViewWidth() {
        int i = this.h;
        if (i == 0 && this.i) {
            return getWidth();
        }
        int i2 = this.s;
        if (i2 != 0) {
            return i2;
        }
        if (i == 1) {
            return getParentWidth() + this.k;
        }
        return getParentWidth();
    }

    public ZoomImageAttacher getZoomAttacher() {
        return this.G;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        Bitmap bitmap;
        if (this.L) {
            canvas.drawColor(PrefImage.B);
        }
        int i = this.m;
        if (i == 2) {
            this.A = true;
            setFadeInAlpha(this.B);
            MyProgressDrawable myProgressDrawable = this.v;
            if (myProgressDrawable != null) {
                myProgressDrawable.f = false;
            }
            if (this.F != null) {
                canvas.translate((getWidth() - this.F.getWidth()) / 2.0f, (getHeight() - this.F.getHeight()) / 2.0f);
                this.F.draw(canvas);
                return;
            }
            return;
        }
        if (i == 1) {
            this.A = true;
            setFadeInAlpha(this.B);
            MyProgressDrawable myProgressDrawable2 = this.v;
            if (myProgressDrawable2 != null) {
                myProgressDrawable2.f = false;
            }
            if (this.y) {
                this.y = false;
                Drawable drawable = this.x;
                if (drawable != null) {
                    int intrinsicWidth = drawable.getIntrinsicWidth();
                    int intrinsicHeight = drawable.getIntrinsicHeight();
                    int width = (getWidth() - intrinsicWidth) / 2;
                    int height = (getHeight() - intrinsicHeight) / 2;
                    drawable.setBounds(width, height, intrinsicWidth + width, intrinsicHeight + height);
                }
            }
            Drawable drawable2 = this.x;
            if (drawable2 != null) {
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable3 = getDrawable();
        if (drawable3 == null) {
            z = true;
        } else {
            z = false;
        }
        if (!z && (drawable3 instanceof BitmapDrawable)) {
            bitmap = ((BitmapDrawable) drawable3).getBitmap();
            z = !MainUtil.f6(bitmap);
        } else {
            bitmap = null;
        }
        if (z) {
            this.A = false;
            setFadeInAlpha(false);
            DrawFailListener drawFailListener = this.f;
            if (drawFailListener != null) {
                drawFailListener.a();
                return;
            }
            if (this.w) {
                this.w = false;
                MyProgressDrawable myProgressDrawable3 = this.v;
                int i2 = MainApp.z1;
                if (myProgressDrawable3 != null) {
                    int width2 = (getWidth() - i2) / 2;
                    int height2 = (getHeight() - i2) / 2;
                    myProgressDrawable3.d(width2, height2, width2 + i2, i2 + height2);
                }
            }
            MyProgressDrawable myProgressDrawable4 = this.v;
            if (myProgressDrawable4 != null) {
                myProgressDrawable4.f();
                this.v.a(canvas);
                return;
            }
            return;
        }
        this.A = true;
        setFadeInAlpha(this.B);
        MyProgressDrawable myProgressDrawable5 = this.v;
        if (myProgressDrawable5 != null) {
            myProgressDrawable5.f = false;
        }
        int i3 = this.h;
        if (i3 == 1) {
            if (this.H != null && this.I != null) {
                if (this.j && this.q > this.r && MainUtil.f6(bitmap)) {
                    float width3 = bitmap.getWidth() / 2.0f;
                    float height3 = bitmap.getHeight();
                    float f = this.u / height3;
                    float f2 = this.k / f;
                    float f3 = (width3 + f2) * 2.0f;
                    float f4 = f2 / 2.0f;
                    float height4 = (getHeight() - this.u) / (f * 2.0f);
                    this.H.set(0, 0, Math.round(width3), Math.round(height3));
                    float f5 = height4 + height3;
                    this.I.set(f4, height4, f4 + width3, f5);
                    this.J.set(Math.round(width3), 0, Math.round(2.0f * width3), Math.round(height3));
                    float f6 = f3 - f4;
                    this.K.set(f6 - width3, height4, f6, f5);
                    canvas.scale(getWidth() / f3, f);
                    canvas.drawBitmap(bitmap, this.H, this.I, this.D);
                    canvas.drawBitmap(bitmap, this.J, this.K, this.D);
                    return;
                }
                float width4 = bitmap.getWidth();
                float height5 = bitmap.getHeight();
                float f7 = this.u / height5;
                float f8 = this.k / f7;
                float f9 = width4 + f8;
                float f10 = f8 / 2.0f;
                float height6 = (getHeight() - this.u) / (2.0f * f7);
                this.H.set(0, 0, Math.round(width4), Math.round(height5));
                this.I.set(f10, height6, width4 + f10, height5 + height6);
                canvas.scale(getWidth() / f9, f7);
                canvas.drawBitmap(bitmap, this.H, this.I, this.D);
                return;
            }
            return;
        }
        if (i3 == 2) {
            if (this.H != null && this.I != null) {
                if (this.j && this.q > this.r && MainUtil.f6(bitmap)) {
                    float width5 = bitmap.getWidth() / 2.0f;
                    float height7 = bitmap.getHeight();
                    float f11 = this.u / width5;
                    float f12 = this.k / f11;
                    float f13 = (height7 + f12) * 2.0f;
                    float f14 = f12 / 2.0f;
                    float width6 = (getWidth() - this.u) / (f11 * 2.0f);
                    canvas.scale(f11, getHeight() / f13);
                    if (this.l) {
                        this.H.set(Math.round(width5), 0, Math.round(2.0f * width5), Math.round(height7));
                        this.J.set(0, 0, Math.round(width5), Math.round(height7));
                    } else {
                        this.H.set(0, 0, Math.round(width5), Math.round(height7));
                        this.J.set(Math.round(width5), 0, Math.round(2.0f * width5), Math.round(height7));
                    }
                    float f15 = width5 + width6;
                    this.I.set(width6, f14, f15, f14 + height7);
                    float f16 = f13 - f14;
                    this.K.set(width6, f16 - height7, f15, f16);
                    canvas.drawBitmap(bitmap, this.H, this.I, this.D);
                    canvas.drawBitmap(bitmap, this.J, this.K, this.D);
                    return;
                }
                float width7 = bitmap.getWidth();
                float height8 = bitmap.getHeight();
                float f17 = this.u / width7;
                float f18 = this.k / f17;
                float f19 = height8 + f18;
                float f20 = f18 / 2.0f;
                float width8 = (getWidth() - this.u) / (2.0f * f17);
                this.H.set(0, 0, Math.round(width7), Math.round(height8));
                this.I.set(width8, f20, width7 + width8, height8 + f20);
                canvas.scale(f17, getHeight() / f19);
                canvas.drawBitmap(bitmap, this.H, this.I, this.D);
                return;
            }
            return;
        }
        try {
            super.onDraw(canvas);
        } catch (Exception unused) {
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        if (this.h == 0 && this.i) {
            super.onMeasure(i, i2);
            return;
        }
        if (this.n && (i3 = this.s) != 0 && (i4 = this.t) != 0) {
            setMeasuredDimension(i3, i4);
            return;
        }
        if (this.m != 0) {
            e(getParentWidth(), getParentHeight());
            setMeasuredDimension(this.s, this.t);
            return;
        }
        Drawable drawable = getDrawable();
        if (drawable == null) {
            int parentWidth = getParentWidth();
            int parentHeight = getParentHeight();
            int i5 = this.h;
            if (i5 == 1) {
                setMeasuredDimension(parentWidth + this.k, parentHeight);
                return;
            } else if (i5 == 2) {
                setMeasuredDimension(parentWidth, parentHeight + this.k);
                return;
            } else {
                setMeasuredDimension(parentWidth, parentHeight);
                return;
            }
        }
        a(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        setMeasuredDimension(this.s, this.t);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.w = true;
        if (this.m == 1) {
            this.y = true;
        }
        ImageSizeListener imageSizeListener = this.g;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        MyProgressDrawable myProgressDrawable = this.v;
        if (myProgressDrawable == null) {
            return;
        }
        if (i == 0 && !this.A) {
            myProgressDrawable.f();
        } else {
            myProgressDrawable.f = false;
        }
    }

    public void setAttacher(ZoomImageAttacher zoomImageAttacher) {
        this.G = zoomImageAttacher;
    }

    public void setDrawBack(boolean z) {
        this.L = z;
    }

    public void setDrawFailListener(DrawFailListener drawFailListener) {
        this.f = drawFailListener;
    }

    public void setFadeIn(boolean z) {
        this.B = z;
        if (!z) {
            setAlpha(1.0f);
        }
    }

    public void setFit(boolean z) {
        this.i = z;
        invalidate();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        if (this.o && this.m == 0 && MainUtil.f6(bitmap)) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            this.n = true;
            a(width, height);
            setFadeIn(true);
        }
        super.setImageBitmap(bitmap);
    }

    public void setListener(ImageSizeListener imageSizeListener) {
        this.g = imageSizeListener;
    }

    public void setMargin(int i) {
        this.k = i;
    }

    public void setParentView(ViewGroup viewGroup) {
        this.p = viewGroup;
    }

    public void setPreProcess(boolean z) {
        this.o = z;
    }
}
