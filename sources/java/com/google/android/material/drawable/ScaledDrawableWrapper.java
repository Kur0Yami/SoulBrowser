package com.google.android.material.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.DrawableWrapperCompat;

@RestrictTo
/* loaded from: classes3.dex */
public class ScaledDrawableWrapper extends DrawableWrapperCompat {
    public ScaledDrawableWrapperState f;
    public boolean g;

    public ScaledDrawableWrapper(Drawable drawable) {
        super(drawable);
        Drawable.ConstantState constantState;
        if (drawable != null) {
            constantState = drawable.getConstantState();
        } else {
            constantState = null;
        }
        this.f = new ScaledDrawableWrapperState(constantState);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat
    public final void a(Drawable drawable) {
        Drawable.ConstantState constantState;
        super.a(drawable);
        ScaledDrawableWrapperState scaledDrawableWrapperState = this.f;
        if (scaledDrawableWrapperState != null) {
            if (drawable != null) {
                constantState = drawable.getConstantState();
            } else {
                constantState = null;
            }
            scaledDrawableWrapperState.f11788a = constantState;
            this.g = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        ScaledDrawableWrapperState scaledDrawableWrapperState = this.f;
        if (scaledDrawableWrapperState.f11788a != null) {
            return scaledDrawableWrapperState;
        }
        return null;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        this.f.getClass();
        return 0;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        this.f.getClass();
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable.ConstantState constantState;
        if (!this.g && super.mutate() == this) {
            Drawable drawable = this.f140c;
            if (drawable != null) {
                drawable.mutate();
            }
            if (drawable != null) {
                constantState = drawable.getConstantState();
            } else {
                constantState = null;
            }
            this.f.getClass();
            this.f = new ScaledDrawableWrapperState(constantState);
            this.g = true;
        }
        return this;
    }

    /* loaded from: classes3.dex */
    public static final class ScaledDrawableWrapperState extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public Drawable.ConstantState f11788a;

        public ScaledDrawableWrapperState(Drawable.ConstantState constantState) {
            this.f11788a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            Drawable.ConstantState constantState = this.f11788a;
            if (constantState != null) {
                return constantState.getChangingConfigurations();
            }
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new ScaledDrawableWrapper(this.f11788a.newDrawable());
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new ScaledDrawableWrapper(this.f11788a.newDrawable(resources));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            return new ScaledDrawableWrapper(this.f11788a.newDrawable(resources, theme));
        }
    }
}
