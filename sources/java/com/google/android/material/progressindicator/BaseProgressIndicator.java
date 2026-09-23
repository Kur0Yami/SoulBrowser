package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public abstract class BaseProgressIndicator<S extends BaseProgressIndicatorSpec> extends ProgressBar {
    public static final /* synthetic */ int f = 0;

    /* renamed from: c, reason: collision with root package name */
    public AnimatorDurationScaleProvider f11850c;

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            int i = BaseProgressIndicator.f;
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            int i = BaseProgressIndicator.f;
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends Animatable2Compat.AnimationCallback {
        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public final void a(Drawable drawable) {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends Animatable2Compat.AnimationCallback {
        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public final void a(Drawable drawable) {
            throw null;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface HideAnimationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface ShowAnimationBehavior {
    }

    @Nullable
    private DrawingDelegate<S> getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            getIndeterminateDrawable().getClass();
            return null;
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        getProgressDrawable().getClass();
        return null;
    }

    public void a(int i) {
        if (isIndeterminate()) {
            if (getProgressDrawable() != null) {
                if (getIndeterminateDrawable().isVisible()) {
                    AnimatorDurationScaleProvider animatorDurationScaleProvider = this.f11850c;
                    ContentResolver contentResolver = getContext().getContentResolver();
                    animatorDurationScaleProvider.getClass();
                    if (Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) != 0.0f) {
                        getIndeterminateDrawable();
                        throw null;
                    }
                }
                getIndeterminateDrawable();
                throw null;
            }
            return;
        }
        super.setProgress(i);
        if (getProgressDrawable() == null) {
            return;
        }
        getProgressDrawable().getClass();
        throw null;
    }

    public final boolean b() {
        if (isAttachedToWindow() && getWindowVisibility() == 0) {
            View view = this;
            while (view.getVisibility() == 0) {
                Object parent = view.getParent();
                if (parent == null) {
                    if (getWindowVisibility() == 0) {
                        return true;
                    }
                    return false;
                }
                if (!(parent instanceof View)) {
                    return true;
                }
                view = (View) parent;
            }
            return false;
        }
        return false;
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public Drawable getCurrentDrawable() {
        if (isIndeterminate()) {
            return getIndeterminateDrawable();
        }
        return getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        throw null;
    }

    @NonNull
    public int[] getIndicatorColor() {
        throw null;
    }

    @Px
    public int getIndicatorTrackGapSize() {
        throw null;
    }

    public int getShowAnimationBehavior() {
        throw null;
    }

    @ColorInt
    public int getTrackColor() {
        throw null;
    }

    @Px
    public int getTrackCornerRadius() {
        throw null;
    }

    public float getTrackCornerRadiusFraction() {
        throw null;
    }

    @Px
    public int getTrackThickness() {
        throw null;
    }

    @Px
    public int getWaveAmplitude() {
        throw null;
    }

    @Px
    public int getWaveSpeed() {
        throw null;
    }

    @Px
    public int getWavelengthDeterminate() {
        throw null;
    }

    @Px
    public int getWavelengthIndeterminate() {
        throw null;
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable();
            throw null;
        }
        if (getProgressDrawable() != null) {
            DeterminateDrawable<S> progressDrawable = getProgressDrawable();
            if (progressDrawable.h == null) {
                progressDrawable.h = new ArrayList();
            }
            if (!progressDrawable.h.contains(null)) {
                progressDrawable.h.add(null);
            }
        }
        if (getIndeterminateDrawable() != null) {
            IndeterminateDrawable<S> indeterminateDrawable = getIndeterminateDrawable();
            if (indeterminateDrawable.h == null) {
                indeterminateDrawable.h = new ArrayList();
            }
            if (!indeterminateDrawable.h.contains(null)) {
                indeterminateDrawable.h.add(null);
            }
        }
        if (b()) {
            setVisibility(0);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(null);
        removeCallbacks(null);
        ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).b();
        if (getIndeterminateDrawable() == null) {
            if (getProgressDrawable() != null) {
                getProgressDrawable().e(null);
            }
            super.onDetachedFromWindow();
        } else {
            getIndeterminateDrawable().e(null);
            getIndeterminateDrawable();
            throw null;
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            int save = canvas.save();
            if (getPaddingLeft() == 0) {
                if (getPaddingTop() != 0) {
                }
                if (getPaddingRight() == 0 || getPaddingBottom() != 0) {
                    canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
                }
                getCurrentDrawable().draw(canvas);
                canvas.restoreToCount(save);
            }
            canvas.translate(getPaddingLeft(), getPaddingTop());
            if (getPaddingRight() == 0) {
            }
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(save);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        getCurrentDrawingDelegate().c();
        throw null;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        try {
            DrawingDelegate<S> currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate != null) {
                if (currentDrawingDelegate.b() < 0) {
                    View.getDefaultSize(getSuggestedMinimumWidth(), i);
                } else {
                    currentDrawingDelegate.b();
                    getPaddingLeft();
                    getPaddingRight();
                }
                currentDrawingDelegate.a();
                throw null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    @RestrictTo
    @VisibleForTesting
    public void setAnimatorDurationScaleProvider(@NonNull AnimatorDurationScaleProvider animatorDurationScaleProvider) {
        this.f11850c = animatorDurationScaleProvider;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f11855c = animatorDurationScaleProvider;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f11855c = animatorDurationScaleProvider;
        }
    }

    public void setHideAnimationBehavior(int i) {
        throw null;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        try {
            if (z == isIndeterminate()) {
                return;
            }
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange != null) {
                drawableWithAnimatedVisibilityChange.b();
            }
            super.setIndeterminate(z);
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange2 = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange2 == null) {
                if ((drawableWithAnimatedVisibilityChange2 instanceof IndeterminateDrawable) && b()) {
                    throw null;
                }
            } else {
                b();
                drawableWithAnimatedVisibilityChange2.c();
                throw null;
            }
        } finally {
        }
    }

    public void setIndeterminateAnimatorDurationScale(@FloatRange float f2) {
        throw null;
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(@Nullable Drawable drawable) {
        if (drawable instanceof IndeterminateDrawable) {
            ((DrawableWithAnimatedVisibilityChange) drawable).b();
            super.setIndeterminateDrawable(drawable);
        } else {
            super.setIndeterminateDrawable(drawable);
        }
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

    public void setIndicatorTrackGapSize(@Px int i) {
        throw null;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        a(i);
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(@Nullable Drawable drawable) {
        if (!(drawable instanceof DeterminateDrawable)) {
            super.setProgressDrawable(drawable);
            return;
        }
        throw null;
    }

    public void setShowAnimationBehavior(int i) {
        throw null;
    }

    public void setTrackColor(@ColorInt int i) {
        throw null;
    }

    public void setTrackCornerRadius(@Px int i) {
        throw null;
    }

    public void setTrackCornerRadiusFraction(@FloatRange float f2) {
        throw null;
    }

    public void setTrackThickness(@Px int i) {
        throw null;
    }

    public void setVisibilityAfterHide(int i) {
        if (i != 0 && i != 4 && i != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
    }

    public void setWaveAmplitude(@Px int i) {
        throw null;
    }

    public void setWaveSpeed(@Px int i) {
        throw null;
    }

    public void setWavelength(@Px int i) {
        setWavelengthDeterminate(i);
        setWavelengthIndeterminate(i);
    }

    public void setWavelengthDeterminate(@Px int i) {
        throw null;
    }

    public void setWavelengthIndeterminate(@Px int i) {
        throw null;
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public IndeterminateDrawable<S> getIndeterminateDrawable() {
        return (IndeterminateDrawable) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public DeterminateDrawable<S> getProgressDrawable() {
        return (DeterminateDrawable) super.getProgressDrawable();
    }
}
