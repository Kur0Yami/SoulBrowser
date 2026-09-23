package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.shape.Shapeable;

/* loaded from: classes3.dex */
public final class DeterminateDrawable<S extends BaseProgressIndicatorSpec> extends DrawableWithAnimatedVisibilityChange {
    public static final /* synthetic */ int l = 0;

    /* renamed from: com.google.android.material.progressindicator.DeterminateDrawable$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends FloatPropertyCompat<DeterminateDrawable<?>> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            int i = DeterminateDrawable.l;
            ((DeterminateDrawable) shapeable).getClass();
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            int i = DeterminateDrawable.l;
            ((DeterminateDrawable) shapeable).getClass();
            throw null;
        }
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final void b() {
        throw null;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final boolean c() {
        throw null;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final boolean d(boolean z) {
        super.d(z);
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(null)) {
            canvas.save();
            getBounds();
            throw null;
        }
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.j;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        throw null;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        throw null;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        throw null;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        throw null;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Animatable
    public final void start() {
        d(true);
        throw null;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Animatable
    public final void stop() {
        d(false);
        throw null;
    }
}
