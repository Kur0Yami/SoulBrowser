package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

@RestrictTo
/* loaded from: classes3.dex */
public final class AdjustedCornerSize implements CornerSize {

    /* renamed from: a, reason: collision with root package name */
    public final CornerSize f11875a;
    public final float b;

    public AdjustedCornerSize(float f, CornerSize cornerSize) {
        while (cornerSize instanceof AdjustedCornerSize) {
            cornerSize = ((AdjustedCornerSize) cornerSize).f11875a;
            f += ((AdjustedCornerSize) cornerSize).b;
        }
        this.f11875a = cornerSize;
        this.b = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f11875a.a(rectF) + this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdjustedCornerSize)) {
            return false;
        }
        AdjustedCornerSize adjustedCornerSize = (AdjustedCornerSize) obj;
        if (this.f11875a.equals(adjustedCornerSize.f11875a) && this.b == adjustedCornerSize.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11875a, Float.valueOf(this.b)});
    }
}
