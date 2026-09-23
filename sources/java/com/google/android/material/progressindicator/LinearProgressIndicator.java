package com.google.android.material.progressindicator;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface IndeterminateAnimationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface IndicatorDirection {
    }

    public int getIndeterminateAnimationType() {
        throw null;
    }

    public int getIndicatorDirection() {
        throw null;
    }

    @Px
    public int getTrackInnerCornerRadius() {
        throw null;
    }

    @Nullable
    public Integer getTrackStopIndicatorPadding() {
        throw null;
    }

    @Px
    public int getTrackStopIndicatorSize() {
        throw null;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        throw null;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingRight = i - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = i2 - (getPaddingBottom() + getPaddingTop());
        IndeterminateDrawable<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
        DeterminateDrawable<LinearProgressIndicatorSpec> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
    }

    public void setIndeterminateAnimationType(int i) {
        throw null;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(@NonNull int... iArr) {
        super.setIndicatorColor(iArr);
        throw null;
    }

    public void setIndicatorDirection(int i) {
        throw null;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        throw null;
    }

    public void setTrackInnerCornerRadius(@Px int i) {
        throw null;
    }

    public void setTrackInnerCornerRadiusFraction(float f) {
        throw null;
    }

    public void setTrackStopIndicatorPadding(@Nullable Integer num) {
        throw null;
    }

    public void setTrackStopIndicatorSize(@Px int i) {
        throw null;
    }
}
