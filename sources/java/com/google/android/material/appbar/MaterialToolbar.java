package com.google.android.material.appbar;

import android.graphics.drawable.Drawable;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.R;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes3.dex */
public class MaterialToolbar extends Toolbar {
    public static final int g0 = R.style.Widget_MaterialComponents_Toolbar;
    public static final ImageView.ScaleType[] h0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public Integer b0;
    public boolean c0;
    public boolean d0;
    public ImageView.ScaleType e0;
    public Boolean f0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialToolbar(@androidx.annotation.NonNull android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8) {
        /*
            r6 = this;
            int r3 = androidx.appcompat.R.attr.toolbarStyle
            int r4 = com.google.android.material.appbar.MaterialToolbar.g0
            android.content.Context r7 = com.google.android.material.theme.overlay.MaterialThemeOverlay.a(r7, r8, r3, r4)
            r6.<init>(r7, r8, r3)
            android.content.Context r0 = r6.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialToolbar
            r7 = 0
            int[] r5 = new int[r7]
            r1 = r8
            android.content.res.TypedArray r8 = com.google.android.material.internal.ThemeEnforcement.d(r0, r1, r2, r3, r4, r5)
            int r1 = com.google.android.material.R.styleable.MaterialToolbar_navigationIconTint
            boolean r1 = r8.hasValue(r1)
            r2 = -1
            if (r1 == 0) goto L2b
            int r1 = com.google.android.material.R.styleable.MaterialToolbar_navigationIconTint
            int r1 = r8.getColor(r1, r2)
            r6.setNavigationIconTint(r1)
        L2b:
            int r1 = com.google.android.material.R.styleable.MaterialToolbar_titleCentered
            boolean r1 = r8.getBoolean(r1, r7)
            r6.c0 = r1
            int r1 = com.google.android.material.R.styleable.MaterialToolbar_subtitleCentered
            boolean r1 = r8.getBoolean(r1, r7)
            r6.d0 = r1
            int r1 = com.google.android.material.R.styleable.MaterialToolbar_logoScaleType
            int r1 = r8.getInt(r1, r2)
            if (r1 < 0) goto L4c
            android.widget.ImageView$ScaleType[] r2 = com.google.android.material.appbar.MaterialToolbar.h0
            int r3 = r2.length
            if (r1 >= r3) goto L4c
            r1 = r2[r1]
            r6.e0 = r1
        L4c:
            int r1 = com.google.android.material.R.styleable.MaterialToolbar_logoAdjustViewBounds
            boolean r1 = r8.hasValue(r1)
            if (r1 == 0) goto L60
            int r1 = com.google.android.material.R.styleable.MaterialToolbar_logoAdjustViewBounds
            boolean r1 = r8.getBoolean(r1, r7)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r6.f0 = r1
        L60:
            r8.recycle()
            android.graphics.drawable.Drawable r8 = r6.getBackground()
            if (r8 != 0) goto L6e
            android.content.res.ColorStateList r7 = android.content.res.ColorStateList.valueOf(r7)
            goto L72
        L6e:
            android.content.res.ColorStateList r7 = com.google.android.material.drawable.DrawableUtils.d(r8)
        L72:
            if (r7 == 0) goto L89
            com.google.android.material.shape.MaterialShapeDrawable r8 = new com.google.android.material.shape.MaterialShapeDrawable
            r8.<init>()
            r8.o(r7)
            r8.l(r0)
            float r7 = r6.getElevation()
            r8.n(r7)
            r6.setBackground(r8)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.MaterialToolbar.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Nullable
    public ImageView.ScaleType getLogoScaleType() {
        return this.e0;
    }

    @Nullable
    @ColorInt
    public Integer getNavigationIconTint() {
        return this.b0;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.d(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TextView textView;
        TextView textView2;
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        ImageView imageView2 = null;
        if (this.c0 || this.d0) {
            ArrayList c2 = ToolbarUtils.c(this, getTitle());
            boolean isEmpty = c2.isEmpty();
            Comparator comparator = ToolbarUtils.f11820a;
            if (isEmpty) {
                textView = null;
            } else {
                textView = (TextView) Collections.min(c2, comparator);
            }
            ArrayList c3 = ToolbarUtils.c(this, getSubtitle());
            if (c3.isEmpty()) {
                textView2 = null;
            } else {
                textView2 = (TextView) Collections.max(c3, comparator);
            }
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i6 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i7 = 0; i7 < getChildCount(); i7++) {
                    View childAt = getChildAt(i7);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i6 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i6 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.c0 && textView != null) {
                    z(textView, pair);
                }
                if (this.d0 && textView2 != null) {
                    z(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            while (true) {
                if (i5 >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(i5);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
                i5++;
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.f0;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.e0;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.b(this, f);
    }

    public void setLogoAdjustViewBounds(boolean z) {
        Boolean bool = this.f0;
        if (bool != null && bool.booleanValue() == z) {
            return;
        }
        this.f0 = Boolean.valueOf(z);
        requestLayout();
    }

    public void setLogoScaleType(@NonNull ImageView.ScaleType scaleType) {
        if (this.e0 != scaleType) {
            this.e0 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null && this.b0 != null) {
            drawable = drawable.mutate();
            drawable.setTint(this.b0.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(@ColorInt int i) {
        this.b0 = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.d0 != z) {
            this.d0 = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.c0 != z) {
            this.c0 = z;
            requestLayout();
        }
    }

    public final void z(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i += max;
            i2 -= max;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i, textView.getTop(), i2, textView.getBottom());
    }
}
