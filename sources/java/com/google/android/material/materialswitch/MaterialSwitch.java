package com.google.android.material.materialswitch;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.drawable.DrawableUtils;

/* loaded from: classes3.dex */
public class MaterialSwitch extends SwitchCompat {
    public static final int[] N = {R.attr.state_with_icon};
    public Drawable A;
    public Drawable B;
    public int C;
    public Drawable D;
    public Drawable E;
    public ColorStateList F;
    public ColorStateList G;
    public PorterDuff.Mode H;
    public ColorStateList I;
    public ColorStateList J;
    public PorterDuff.Mode K;
    public int[] L;
    public int[] M;

    public static void f(Drawable drawable, ColorStateList colorStateList, int[] iArr, int[] iArr2, float f) {
        if (drawable != null && colorStateList != null) {
            drawable.setTint(ColorUtils.e(f, colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0)));
        }
    }

    public final void d() {
        this.A = DrawableUtils.b(this.A, this.F, getThumbTintMode());
        this.B = DrawableUtils.b(this.B, this.G, this.H);
        g();
        Drawable drawable = this.A;
        Drawable drawable2 = this.B;
        int i = this.C;
        super.setThumbDrawable(DrawableUtils.a(drawable, drawable2, i, i));
        refreshDrawableState();
    }

    public final void e() {
        this.D = DrawableUtils.b(this.D, this.I, getTrackTintMode());
        this.E = DrawableUtils.b(this.E, this.J, this.K);
        g();
        Drawable drawable = this.D;
        if (drawable != null && this.E != null) {
            drawable = new LayerDrawable(new Drawable[]{this.D, this.E});
        } else if (drawable == null) {
            drawable = this.E;
        }
        if (drawable != null) {
            setSwitchMinWidth(drawable.getIntrinsicWidth());
        }
        super.setTrackDrawable(drawable);
    }

    public final void g() {
        if (this.F != null || this.G != null || this.I != null || this.J != null) {
            float thumbPosition = getThumbPosition();
            ColorStateList colorStateList = this.F;
            if (colorStateList != null) {
                f(this.A, colorStateList, this.L, this.M, thumbPosition);
            }
            ColorStateList colorStateList2 = this.G;
            if (colorStateList2 != null) {
                f(this.B, colorStateList2, this.L, this.M, thumbPosition);
            }
            ColorStateList colorStateList3 = this.I;
            if (colorStateList3 != null) {
                f(this.D, colorStateList3, this.L, this.M, thumbPosition);
            }
            ColorStateList colorStateList4 = this.J;
            if (colorStateList4 != null) {
                f(this.E, colorStateList4, this.L, this.M, thumbPosition);
            }
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getThumbDrawable() {
        return this.A;
    }

    @Nullable
    public Drawable getThumbIconDrawable() {
        return this.B;
    }

    @Px
    public int getThumbIconSize() {
        return this.C;
    }

    @Nullable
    public ColorStateList getThumbIconTintList() {
        return this.G;
    }

    @NonNull
    public PorterDuff.Mode getThumbIconTintMode() {
        return this.H;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getThumbTintList() {
        return this.F;
    }

    @Nullable
    public Drawable getTrackDecorationDrawable() {
        return this.E;
    }

    @Nullable
    public ColorStateList getTrackDecorationTintList() {
        return this.J;
    }

    @NonNull
    public PorterDuff.Mode getTrackDecorationTintMode() {
        return this.K;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getTrackDrawable() {
        return this.D;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getTrackTintList() {
        return this.I;
    }

    @Override // android.view.View
    public final void invalidate() {
        g();
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.B != null) {
            View.mergeDrawableStates(onCreateDrawableState, N);
        }
        int[] iArr = new int[onCreateDrawableState.length];
        int i2 = 0;
        for (int i3 : onCreateDrawableState) {
            if (i3 != 16842912) {
                iArr[i2] = i3;
                i2++;
            }
        }
        this.L = iArr;
        this.M = DrawableUtils.c(onCreateDrawableState);
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbDrawable(@Nullable Drawable drawable) {
        this.A = drawable;
        d();
    }

    public void setThumbIconDrawable(@Nullable Drawable drawable) {
        this.B = drawable;
        d();
    }

    public void setThumbIconResource(@DrawableRes int i) {
        setThumbIconDrawable(AppCompatResources.a(getContext(), i));
    }

    public void setThumbIconSize(@Px int i) {
        if (this.C != i) {
            this.C = i;
            d();
        }
    }

    public void setThumbIconTintList(@Nullable ColorStateList colorStateList) {
        this.G = colorStateList;
        d();
    }

    public void setThumbIconTintMode(@NonNull PorterDuff.Mode mode) {
        this.H = mode;
        d();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.F = colorStateList;
        d();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        super.setThumbTintMode(mode);
        d();
    }

    public void setTrackDecorationDrawable(@Nullable Drawable drawable) {
        this.E = drawable;
        e();
    }

    public void setTrackDecorationResource(@DrawableRes int i) {
        setTrackDecorationDrawable(AppCompatResources.a(getContext(), i));
    }

    public void setTrackDecorationTintList(@Nullable ColorStateList colorStateList) {
        this.J = colorStateList;
        e();
    }

    public void setTrackDecorationTintMode(@NonNull PorterDuff.Mode mode) {
        this.K = mode;
        e();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackDrawable(@Nullable Drawable drawable) {
        this.D = drawable;
        e();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.I = colorStateList;
        e();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        super.setTrackTintMode(mode);
        e();
    }
}
