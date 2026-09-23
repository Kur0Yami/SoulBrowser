package com.google.android.material.progressindicator;

import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {

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
    public int getIndicatorInset() {
        throw null;
    }

    @Px
    public int getIndicatorSize() {
        throw null;
    }

    public void setIndeterminateAnimationType(int i) {
        throw null;
    }

    public void setIndicatorDirection(int i) {
        throw null;
    }

    public void setIndicatorInset(@Px int i) {
        throw null;
    }

    public void setIndicatorSize(@Px int i) {
        Math.max(i, getTrackThickness() * 2);
        throw null;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i) {
        super.setTrackThickness(i);
        throw null;
    }
}
