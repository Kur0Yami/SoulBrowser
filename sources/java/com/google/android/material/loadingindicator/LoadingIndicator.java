package com.google.android.material.loadingindicator;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.progressindicator.AnimatorDurationScaleProvider;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class LoadingIndicator extends View implements Drawable.Callback {
    public final void a() {
        if (isAttachedToWindow() && getWindowVisibility() == 0) {
            View view = this;
            while (view.getVisibility() == 0) {
                Object parent = view.getParent();
                if (parent == null) {
                    getWindowVisibility();
                    return;
                } else if (!(parent instanceof View)) {
                    return;
                } else {
                    view = (View) parent;
                }
            }
        }
    }

    @Override // android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return ProgressBar.class.getName();
    }

    @ColorInt
    public int getContainerColor() {
        throw null;
    }

    @Px
    public int getContainerHeight() {
        throw null;
    }

    @Px
    public int getContainerWidth() {
        throw null;
    }

    @NonNull
    public LoadingIndicatorDrawable getDrawable() {
        return null;
    }

    @NonNull
    public int[] getIndicatorColor() {
        throw null;
    }

    @Px
    public int getIndicatorSize() {
        throw null;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
            canvas.clipRect(0, 0, getWidth() - (getPaddingRight() + getPaddingLeft()), getHeight() - (getPaddingBottom() + getPaddingTop()));
        }
        throw null;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        View.MeasureSpec.getMode(i);
        View.MeasureSpec.getMode(i2);
        View.MeasureSpec.getSize(i);
        View.MeasureSpec.getSize(i2);
        throw null;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        throw null;
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        a();
        throw null;
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        a();
        throw null;
    }

    @RestrictTo
    @VisibleForTesting
    public void setAnimatorDurationScaleProvider(@NonNull AnimatorDurationScaleProvider animatorDurationScaleProvider) {
        throw null;
    }

    public void setContainerColor(@ColorInt int i) {
        throw null;
    }

    public void setContainerHeight(@Px int i) {
        throw null;
    }

    public void setContainerWidth(@Px int i) {
        throw null;
    }

    public void setIndicatorColor(@ColorInt int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{MaterialColors.b(getContext(), R.attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
        } else {
            throw null;
        }
    }

    public void setIndicatorSize(@Px int i) {
        throw null;
    }
}
