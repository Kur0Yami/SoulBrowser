package androidx.constraintlayout.utils.widget;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Typeface;
import android.util.Log;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.motion.widget.FloatLayout;

/* loaded from: classes.dex */
public class MotionLabel extends View implements FloatLayout {

    /* renamed from: c, reason: collision with root package name */
    public int f571c;
    public boolean f;
    public float g;
    public float h;
    public float i;
    public float j;
    public String k;
    public int l;
    public int m;
    public int n;
    public float o;
    public float p;
    public float q;
    public float r;
    public float s;
    public float t;
    public float u;
    public float v;

    /* renamed from: androidx.constraintlayout.utils.widget.MotionLabel$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            throw null;
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.MotionLabel$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            throw null;
        }
    }

    private float getHorizontalOffset() {
        Float.isNaN(this.j);
        this.k.length();
        throw null;
    }

    private float getVerticalOffset() {
        Float.isNaN(this.j);
        throw null;
    }

    public final void a() {
        Float.isNaN(this.s);
        Float.isNaN(this.t);
        Float.isNaN(this.u);
        Float.isNaN(this.v);
        throw null;
    }

    public float getRound() {
        return this.h;
    }

    public float getRoundPercent() {
        return this.g;
    }

    public float getScaleFromTextSize() {
        return this.j;
    }

    public float getTextBackgroundPanX() {
        return this.s;
    }

    public float getTextBackgroundPanY() {
        return this.t;
    }

    public float getTextBackgroundRotate() {
        return this.v;
    }

    public float getTextBackgroundZoom() {
        return this.u;
    }

    public int getTextOutlineColor() {
        return this.f571c;
    }

    public float getTextPanX() {
        return this.q;
    }

    public float getTextPanY() {
        return this.r;
    }

    public float getTextureHeight() {
        return this.o;
    }

    public float getTextureWidth() {
        return this.p;
    }

    public Typeface getTypeface() {
        throw null;
    }

    @Override // android.view.View
    public final void layout(int i, int i2, int i3, int i4) {
        float f;
        super.layout(i, i2, i3, i4);
        boolean isNaN = Float.isNaN(this.j);
        if (isNaN) {
            f = 1.0f;
        } else {
            f = this.i / this.j;
        }
        boolean z = this.f;
        if (z || !isNaN) {
            if (!z && f == 1.0f) {
            } else {
                throw null;
            }
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        if (Float.isNaN(this.j)) {
            f = 1.0f;
        } else {
            f = this.i / this.j;
        }
        super.onDraw(canvas);
        boolean z = this.f;
        if (!z && f == 1.0f) {
            canvas.drawText(this.k, 0.0f + this.l + getHorizontalOffset(), this.m + getVerticalOffset(), null);
        } else {
            if (z) {
                throw null;
            }
            getHorizontalOffset();
            getVerticalOffset();
            throw null;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        this.l = getPaddingLeft();
        getPaddingRight();
        this.m = getPaddingTop();
        getPaddingBottom();
        if (mode == 1073741824 && mode2 == 1073741824) {
            setMeasuredDimension(size, size2);
        } else {
            this.k.getClass();
            throw null;
        }
    }

    @SuppressLint({"RtlHardcoded"})
    public void setGravity(int i) {
        if ((i & 8388615) == 0) {
            i |= 8388611;
        }
        if ((i & 112) == 0) {
            i |= 48;
        }
        if (i != this.n) {
            invalidate();
        }
        this.n = i;
        int i2 = i & 112;
        if (i2 != 48) {
            if (i2 != 80) {
                this.r = 0.0f;
            } else {
                this.r = 1.0f;
            }
        } else {
            this.r = -1.0f;
        }
        int i3 = i & 8388615;
        if (i3 != 3) {
            if (i3 != 5) {
                if (i3 != 8388611) {
                    if (i3 != 8388613) {
                        this.q = 0.0f;
                        return;
                    }
                }
            }
            this.q = 1.0f;
            return;
        }
        this.q = -1.0f;
    }

    @RequiresApi
    public void setRound(float f) {
        boolean z;
        if (Float.isNaN(f)) {
            this.h = f;
            float f2 = this.g;
            this.g = -1.0f;
            setRoundPercent(f2);
            return;
        }
        if (this.h != f) {
            z = true;
        } else {
            z = false;
        }
        this.h = f;
        if (f == 0.0f) {
            setClipToOutline(false);
            if (z) {
                invalidateOutline();
                return;
            }
            return;
        }
        setClipToOutline(true);
        getWidth();
        getHeight();
        throw null;
    }

    @RequiresApi
    public void setRoundPercent(float f) {
        boolean z;
        if (this.g != f) {
            z = true;
        } else {
            z = false;
        }
        this.g = f;
        if (f == 0.0f) {
            setClipToOutline(false);
            if (z) {
                invalidateOutline();
                return;
            }
            return;
        }
        setClipToOutline(true);
        Math.min(getWidth(), getHeight());
        throw null;
    }

    public void setScaleFromTextSize(float f) {
        this.j = f;
    }

    public void setText(CharSequence charSequence) {
        this.k = charSequence.toString();
        invalidate();
    }

    public void setTextBackgroundPanX(float f) {
        this.s = f;
        a();
        throw null;
    }

    public void setTextBackgroundPanY(float f) {
        this.t = f;
        a();
        throw null;
    }

    public void setTextBackgroundRotate(float f) {
        this.v = f;
        a();
        throw null;
    }

    public void setTextBackgroundZoom(float f) {
        this.u = f;
        a();
        throw null;
    }

    public void setTextFillColor(int i) {
        invalidate();
    }

    public void setTextOutlineColor(int i) {
        this.f571c = i;
        this.f = true;
        invalidate();
    }

    public void setTextOutlineThickness(float f) {
        this.f = true;
        if (Float.isNaN(f)) {
            this.f = false;
        }
        invalidate();
    }

    public void setTextPanX(float f) {
        this.q = f;
        invalidate();
    }

    public void setTextPanY(float f) {
        this.r = f;
        invalidate();
    }

    public void setTextSize(float f) {
        this.i = f;
        StringBuilder sb = new StringBuilder();
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        sb.append(".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "()");
        sb.append("  ");
        sb.append(f);
        sb.append(" / ");
        sb.append(this.j);
        Log.v("MotionLabel", sb.toString());
        Float.isNaN(this.j);
        throw null;
    }

    public void setTextureHeight(float f) {
        this.o = f;
        a();
        throw null;
    }

    public void setTextureWidth(float f) {
        this.p = f;
        a();
        throw null;
    }

    public void setTypeface(Typeface typeface) {
        throw null;
    }
}
