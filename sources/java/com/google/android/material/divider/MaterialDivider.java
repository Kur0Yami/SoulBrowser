package com.google.android.material.divider;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Px;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;

/* loaded from: classes3.dex */
public class MaterialDivider extends View {
    public static final int j = R.style.Widget_MaterialComponents_MaterialDivider;

    /* renamed from: c, reason: collision with root package name */
    public final MaterialShapeDrawable f11786c;
    public int f;
    public int g;
    public int h;
    public int i;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialDivider(@androidx.annotation.NonNull android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8) {
        /*
            r6 = this;
            int r3 = com.google.android.material.R.attr.materialDividerStyle
            int r4 = com.google.android.material.divider.MaterialDivider.j
            android.content.Context r7 = com.google.android.material.theme.overlay.MaterialThemeOverlay.a(r7, r8, r3, r4)
            r6.<init>(r7, r8, r3)
            android.content.Context r0 = r6.getContext()
            com.google.android.material.shape.MaterialShapeDrawable r7 = new com.google.android.material.shape.MaterialShapeDrawable
            r7.<init>()
            r6.f11786c = r7
            int[] r2 = com.google.android.material.R.styleable.MaterialDivider
            r7 = 0
            int[] r5 = new int[r7]
            r1 = r8
            android.content.res.TypedArray r8 = com.google.android.material.internal.ThemeEnforcement.d(r0, r1, r2, r3, r4, r5)
            int r1 = com.google.android.material.R.styleable.MaterialDivider_dividerThickness
            android.content.res.Resources r2 = r6.getResources()
            int r3 = com.google.android.material.R.dimen.material_divider_thickness
            int r2 = r2.getDimensionPixelSize(r3)
            int r1 = r8.getDimensionPixelSize(r1, r2)
            r6.f = r1
            int r1 = com.google.android.material.R.styleable.MaterialDivider_dividerInsetStart
            int r1 = r8.getDimensionPixelOffset(r1, r7)
            r6.h = r1
            int r1 = com.google.android.material.R.styleable.MaterialDivider_dividerInsetEnd
            int r7 = r8.getDimensionPixelOffset(r1, r7)
            r6.i = r7
            int r7 = com.google.android.material.R.styleable.MaterialDivider_dividerColor
            android.content.res.ColorStateList r7 = com.google.android.material.resources.MaterialResources.a(r0, r8, r7)
            int r7 = r7.getDefaultColor()
            r6.setDividerColor(r7)
            r8.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.divider.MaterialDivider.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public int getDividerColor() {
        return this.g;
    }

    @Px
    public int getDividerInsetEnd() {
        return this.i;
    }

    @Px
    public int getDividerInsetStart() {
        return this.h;
    }

    public int getDividerThickness() {
        return this.f;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        int width;
        int i2;
        super.onDraw(canvas);
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        if (z) {
            i = this.i;
        } else {
            i = this.h;
        }
        if (z) {
            width = getWidth();
            i2 = this.h;
        } else {
            width = getWidth();
            i2 = this.i;
        }
        int i3 = width - i2;
        int bottom = getBottom() - getTop();
        MaterialShapeDrawable materialShapeDrawable = this.f11786c;
        materialShapeDrawable.setBounds(i, 0, i3, bottom);
        materialShapeDrawable.draw(canvas);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        int measuredHeight = getMeasuredHeight();
        if (mode != Integer.MIN_VALUE && mode != 0) {
            return;
        }
        int i3 = this.f;
        if (i3 > 0 && measuredHeight != i3) {
            measuredHeight = i3;
        }
        setMeasuredDimension(getMeasuredWidth(), measuredHeight);
    }

    public void setDividerColor(@ColorInt int i) {
        if (this.g != i) {
            this.g = i;
            this.f11786c.o(ColorStateList.valueOf(i));
            invalidate();
        }
    }

    public void setDividerColorResource(@ColorRes int i) {
        setDividerColor(getContext().getColor(i));
    }

    public void setDividerInsetEnd(@Px int i) {
        this.i = i;
    }

    public void setDividerInsetEndResource(@DimenRes int i) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i));
    }

    public void setDividerInsetStart(@Px int i) {
        this.h = i;
    }

    public void setDividerInsetStartResource(@DimenRes int i) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i));
    }

    public void setDividerThickness(@Px int i) {
        if (this.f != i) {
            this.f = i;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(@DimenRes int i) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i));
    }
}
