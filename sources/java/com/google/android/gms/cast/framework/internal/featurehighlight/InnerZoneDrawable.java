package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.internal.cast.zzgy;

/* loaded from: classes.dex */
class InnerZoneDrawable extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f3481a;
    public final Paint b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f3482c;
    public final int d;
    public final int e;
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;

    public InnerZoneDrawable(Context context) {
        Paint paint = new Paint();
        this.f3481a = paint;
        Paint paint2 = new Paint();
        this.b = paint2;
        this.f3482c = new Rect();
        this.g = 1.0f;
        Resources resources = context.getResources();
        this.d = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.e = resources.getInteger(R.integer.cast_libraries_material_featurehighlight_pulse_base_alpha);
        paint.setAntiAlias(true);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(-1);
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
        paint2.setColor(-1);
    }

    public final Animator a() {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scale", 0.0f), PropertyValuesHolder.ofInt("alpha", 0), PropertyValuesHolder.ofFloat("pulseScale", 0.0f), PropertyValuesHolder.ofFloat("pulseAlpha", 0.0f));
        ofPropertyValuesHolder.setInterpolator(zzgy.b());
        return ofPropertyValuesHolder.setDuration(200L);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        float f = this.k;
        if (f > 0.0f) {
            float f2 = this.f * this.j;
            Paint paint = this.b;
            paint.setAlpha((int) (this.e * f));
            canvas.drawCircle(this.h, this.i, f2, paint);
        }
        canvas.drawCircle(this.h, this.i, this.f * this.g, this.f3481a);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f3481a.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f3481a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Keep
    public void setPulseAlpha(float f) {
        this.k = f;
        invalidateSelf();
    }

    @Keep
    public void setPulseScale(float f) {
        this.j = f;
        invalidateSelf();
    }

    @Keep
    public void setScale(float f) {
        this.g = f;
        invalidateSelf();
    }
}
