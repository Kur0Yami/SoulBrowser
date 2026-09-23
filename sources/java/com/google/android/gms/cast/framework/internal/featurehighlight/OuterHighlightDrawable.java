package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.annotation.Keep;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.internal.cast.zzgz;

/* loaded from: classes.dex */
class OuterHighlightDrawable extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final int f3483a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3484c;
    public final Rect d = new Rect();
    public final Rect e = new Rect();
    public final Paint f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public float l;
    public int m;

    public OuterHighlightDrawable(Context context) {
        Paint paint = new Paint();
        this.f = paint;
        this.h = 1.0f;
        this.k = 0.0f;
        this.l = 0.0f;
        this.m = 244;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true);
        paint.setColor(ColorUtils.l(typedValue.data, 244));
        this.m = paint.getAlpha();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Resources resources = context.getResources();
        this.f3483a = resources.getDimensionPixelSize(com.google.android.gms.cast.framework.R.dimen.cast_libraries_material_featurehighlight_center_threshold);
        this.b = resources.getDimensionPixelSize(com.google.android.gms.cast.framework.R.dimen.cast_libraries_material_featurehighlight_center_horizontal_offset);
        this.f3484c = resources.getDimensionPixelSize(com.google.android.gms.cast.framework.R.dimen.cast_libraries_material_featurehighlight_outer_padding);
    }

    public static final float a(float f, float f2, Rect rect) {
        float f3 = rect.left;
        float f4 = rect.top;
        float f5 = rect.right;
        float f6 = rect.bottom;
        float a2 = zzgz.a(f, f2, f3, f4);
        float a3 = zzgz.a(f, f2, f5, f4);
        float a4 = zzgz.a(f, f2, f5, f6);
        float a5 = zzgz.a(f, f2, f3, f6);
        if (a2 <= a3 || a2 <= a4 || a2 <= a5) {
            if (a3 > a4 && a3 > a5) {
                a2 = a3;
            } else if (a4 <= a5) {
                a2 = a5;
            } else {
                a2 = a4;
            }
        }
        return (float) Math.ceil(a2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawCircle(this.i + this.k, this.j + this.l, this.g * this.h, this.f);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Keep
    public void setScale(float f) {
        this.h = f;
        invalidateSelf();
    }

    @Keep
    public void setTranslationX(float f) {
        this.k = f;
        invalidateSelf();
    }

    @Keep
    public void setTranslationY(float f) {
        this.l = f;
        invalidateSelf();
    }
}
