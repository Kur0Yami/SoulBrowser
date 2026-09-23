package com.google.android.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.TintAwareDrawable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;

@RestrictTo
/* loaded from: classes3.dex */
public class RippleDrawableCompat extends Drawable implements Shapeable, TintAwareDrawable {

    /* renamed from: c, reason: collision with root package name */
    public RippleDrawableCompatState f11866c;

    /* loaded from: classes3.dex */
    public static final class RippleDrawableCompatState extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final MaterialShapeDrawable f11867a;
        public boolean b;

        public RippleDrawableCompatState(RippleDrawableCompatState rippleDrawableCompatState) {
            this.f11867a = (MaterialShapeDrawable) rippleDrawableCompatState.f11867a.f.newDrawable();
            this.b = rippleDrawableCompatState.b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [android.graphics.drawable.Drawable, com.google.android.material.ripple.RippleDrawableCompat] */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            RippleDrawableCompatState rippleDrawableCompatState = new RippleDrawableCompatState(this);
            ?? drawable = new Drawable();
            drawable.f11866c = rippleDrawableCompatState;
            return drawable;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        RippleDrawableCompatState rippleDrawableCompatState = this.f11866c;
        if (rippleDrawableCompatState.b) {
            rippleDrawableCompatState.f11867a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f11866c;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        this.f11866c.f11867a.getClass();
        return -3;
    }

    @Override // com.google.android.material.shape.Shapeable
    public final ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f11866c.f11867a.f.f11880a;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f11866c = new RippleDrawableCompatState(this.f11866c);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f11866c.f11867a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.f11866c.f11867a.setState(iArr)) {
            onStateChange = true;
        }
        boolean d = RippleUtils.d(iArr);
        RippleDrawableCompatState rippleDrawableCompatState = this.f11866c;
        if (rippleDrawableCompatState.b != d) {
            rippleDrawableCompatState.b = d;
            return true;
        }
        return onStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f11866c.f11867a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f11866c.f11867a.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.shape.Shapeable
    public final void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.f11866c.f11867a.setShapeAppearanceModel(shapeAppearanceModel);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        this.f11866c.f11867a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f11866c.f11867a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f11866c.f11867a.setTintMode(mode);
    }
}
