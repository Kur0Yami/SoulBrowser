package com.google.android.material.transition;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.google.android.material.canvas.CanvasCompat;

/* loaded from: classes3.dex */
class TransitionUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final RectF f12033a = new RectF();

    /* loaded from: classes3.dex */
    public interface CornerSizeBinaryOperator {
    }

    public static View a(View view) {
        String resourceName = view.getResources().getResourceName(0);
        while (view != null) {
            if (view.getId() == 0) {
                return view;
            }
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        throw new IllegalArgumentException(android.support.v4.media.a.k(resourceName, " is not a valid ancestor"));
    }

    public static RectF b(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    public static float c(float f, float f2, float f3) {
        return android.support.v4.media.a.a(f2, f, f3, f);
    }

    public static float d(float f, float f2, float f3, float f4, float f5, boolean z) {
        if (z && (f5 < 0.0f || f5 > 1.0f)) {
            return c(f, f2, f5);
        }
        if (f5 < f3) {
            return f;
        }
        if (f5 > f4) {
            return f2;
        }
        return c(f, f2, (f5 - f3) / (f4 - f3));
    }

    public static int e(float f, float f2, float f3, int i, int i2) {
        if (f3 < f) {
            return i;
        }
        if (f3 > f2) {
            return i2;
        }
        return (int) c(i, i2, (f3 - f) / (f2 - f));
    }

    public static void f(Canvas canvas, Rect rect, float f, float f2, float f3, int i, CanvasCompat.CanvasOperation canvasOperation) {
        if (i <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        if (i < 255) {
            RectF rectF = f12033a;
            rectF.set(rect);
            canvas.saveLayerAlpha(rectF, i);
        }
        canvasOperation.a(canvas);
        canvas.restoreToCount(save);
    }
}
