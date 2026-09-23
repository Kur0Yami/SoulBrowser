package com.google.android.material.carousel;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.math.MathUtils;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;

/* loaded from: classes3.dex */
public class MaskableFrameLayout extends FrameLayout implements Maskable, Shapeable {
    public static final /* synthetic */ int h = 0;

    /* renamed from: c, reason: collision with root package name */
    public float f11721c;
    public OnMaskChangedListener f;
    public ShapeAppearanceModel g;

    public final void a() {
        if (this.f11721c != -1.0f) {
            float b = AnimationUtils.b(0.0f, getWidth() / 2.0f, 0.0f, 1.0f, this.f11721c);
            setMaskRectF(new RectF(b, 0.0f, getWidth() - b, getHeight()));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        throw null;
    }

    @Override // android.view.View
    public final void getFocusedRect(Rect rect) {
        throw null;
    }

    @NonNull
    public RectF getMaskRectF() {
        return null;
    }

    @Deprecated
    public float getMaskXPercentage() {
        return this.f11721c;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        throw null;
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        motionEvent.getAction();
        throw null;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.getBoundsInScreen(null);
        if (getX() <= 0.0f) {
            if (getY() > 0.0f) {
                throw null;
            }
            throw null;
        }
        throw null;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        throw null;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f11721c != -1.0f) {
            a();
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        throw null;
    }

    @RestrictTo
    @VisibleForTesting
    public void setForceCompatClipping(boolean z) {
        throw null;
    }

    @Override // com.google.android.material.carousel.Maskable
    public void setMaskRectF(@NonNull RectF rectF) {
        throw null;
    }

    @Deprecated
    public void setMaskXPercentage(float f) {
        float a2 = MathUtils.a(f, 0.0f, 1.0f);
        if (this.f11721c != a2) {
            this.f11721c = a2;
            a();
        }
    }

    @Override // android.view.View
    public void setOnHoverListener(@Nullable View.OnHoverListener onHoverListener) {
    }

    public void setOnMaskChangedListener(@Nullable OnMaskChangedListener onMaskChangedListener) {
        this.f = onMaskChangedListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.shape.ShapeAppearanceModel$CornerSizeUnaryOperator, java.lang.Object] */
    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.g = shapeAppearanceModel.h(new Object());
        throw null;
    }
}
