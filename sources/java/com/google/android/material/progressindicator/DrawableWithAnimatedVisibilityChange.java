package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.AnimationUtils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
abstract class DrawableWithAnimatedVisibilityChange extends Drawable implements Animatable2Compat {
    public static final Property k = new Property(Float.class, "growFraction");

    /* renamed from: c, reason: collision with root package name */
    public AnimatorDurationScaleProvider f11855c;
    public ObjectAnimator f;
    public ObjectAnimator g;
    public ArrayList h;
    public float i;
    public int j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends AnimatorListenerAdapter {
    }

    /* renamed from: com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends Property<DrawableWithAnimatedVisibilityChange, Float> {
        @Override // android.util.Property
        public final Float get(DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange) {
            drawableWithAnimatedVisibilityChange.getClass();
            throw null;
        }

        @Override // android.util.Property
        public final void set(DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange, Float f) {
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange2 = drawableWithAnimatedVisibilityChange;
            float floatValue = f.floatValue();
            if (drawableWithAnimatedVisibilityChange2.i != floatValue) {
                drawableWithAnimatedVisibilityChange2.i = floatValue;
                drawableWithAnimatedVisibilityChange2.invalidateSelf();
            }
        }
    }

    public void b() {
        c();
        throw null;
    }

    public boolean c() {
        throw null;
    }

    public boolean d(boolean z) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2;
        ObjectAnimator objectAnimator3 = this.f;
        Property property = k;
        if (objectAnimator3 == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<DrawableWithAnimatedVisibilityChange, Float>) property, 0.0f, 1.0f);
            this.f = ofFloat;
            ofFloat.setDuration(500L);
            this.f.setInterpolator(AnimationUtils.b);
            ObjectAnimator objectAnimator4 = this.f;
            if (objectAnimator4 != null && objectAnimator4.isRunning()) {
                throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
            }
            this.f = objectAnimator4;
            objectAnimator4.addListener(new AnimatorListenerAdapter());
        }
        if (this.g == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, (Property<DrawableWithAnimatedVisibilityChange, Float>) property, 1.0f, 0.0f);
            this.g = ofFloat2;
            ofFloat2.setDuration(500L);
            this.g.setInterpolator(AnimationUtils.b);
            ObjectAnimator objectAnimator5 = this.g;
            if (objectAnimator5 != null && objectAnimator5.isRunning()) {
                throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
            }
            this.g = objectAnimator5;
            objectAnimator5.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    DrawableWithAnimatedVisibilityChange.super.setVisible(false, false);
                }
            });
        }
        if (!isVisible() && !z) {
            return false;
        }
        if (z) {
            objectAnimator = this.f;
        } else {
            objectAnimator = this.g;
        }
        if (z) {
            objectAnimator2 = this.g;
        } else {
            objectAnimator2 = this.f;
        }
        if (objectAnimator2.isRunning()) {
            new ValueAnimator[]{objectAnimator2}[0].cancel();
        }
        if (objectAnimator.isRunning()) {
            objectAnimator.end();
        } else {
            new ValueAnimator[]{objectAnimator}[0].end();
        }
        return super.setVisible(z, false);
    }

    public boolean e(Animatable2Compat.AnimationCallback animationCallback) {
        ArrayList arrayList = this.h;
        if (arrayList != null && arrayList.contains(null)) {
            this.h.remove((Object) null);
            if (this.h.isEmpty()) {
                this.h = null;
                return true;
            }
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        boolean z;
        boolean z2;
        ObjectAnimator objectAnimator = this.f;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            ObjectAnimator objectAnimator2 = this.g;
            if (objectAnimator2 != null && objectAnimator2.isRunning()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.j = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        c();
        throw null;
    }

    public void start() {
        d(true);
    }

    public void stop() {
        d(false);
    }
}
