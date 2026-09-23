package com.google.android.material.shadow;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

@RestrictTo
/* loaded from: classes3.dex */
public class ShadowRenderer {
    public static final int[] i = new int[3];
    public static final float[] j = {0.0f, 0.5f, 1.0f};
    public static final int[] k = new int[4];
    public static final float[] l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f11872a;
    public final Paint b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f11873c;
    public int d;
    public int e;
    public int f;
    public final Path g = new Path();
    public final Paint h;

    public ShadowRenderer() {
        Paint paint = new Paint();
        this.h = paint;
        this.f11872a = new Paint();
        c(-16777216);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f11873c = new Paint(paint2);
    }

    public final void a(Canvas canvas, Matrix matrix, RectF rectF, int i2, float f, float f2) {
        boolean z;
        if (f2 < 0.0f) {
            z = true;
        } else {
            z = false;
        }
        int[] iArr = k;
        Path path = this.g;
        if (z) {
            iArr[0] = 0;
            iArr[1] = this.f;
            iArr[2] = this.e;
            iArr[3] = this.d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i2;
            rectF.inset(f3, f3);
            iArr[0] = 0;
            iArr[1] = this.d;
            iArr[2] = this.e;
            iArr[3] = this.f;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f4 = 1.0f - (i2 / width);
        float[] fArr = l;
        fArr[1] = f4;
        fArr[2] = ((1.0f - f4) / 2.0f) + f4;
        RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP);
        boolean z2 = z;
        Paint paint = this.b;
        paint.setShader(radialGradient);
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z2) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.h);
        }
        canvas.drawArc(rectF, f, f2, true, paint);
        canvas.restore();
    }

    public final void b(Canvas canvas, Matrix matrix, RectF rectF, int i2) {
        rectF.bottom += i2;
        rectF.offset(0.0f, -i2);
        int i3 = this.f;
        int[] iArr = i;
        iArr[0] = i3;
        iArr[1] = this.e;
        iArr[2] = this.d;
        float f = rectF.left;
        LinearGradient linearGradient = new LinearGradient(f, rectF.top, f, rectF.bottom, iArr, j, Shader.TileMode.CLAMP);
        Paint paint = this.f11873c;
        paint.setShader(linearGradient);
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final void c(int i2) {
        this.d = ColorUtils.l(i2, 68);
        this.e = ColorUtils.l(i2, 20);
        this.f = ColorUtils.l(i2, 0);
        this.f11872a.setColor(this.d);
    }
}
