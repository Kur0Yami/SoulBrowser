package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import java.util.Arrays;

@RestrictTo
/* loaded from: classes3.dex */
public final class ClampedCornerSize implements CornerSize {

    /* renamed from: a, reason: collision with root package name */
    public final float f11876a;

    public ClampedCornerSize(float f) {
        this.f11876a = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    public final float a(RectF rectF) {
        return MathUtils.a(this.f11876a, 0.0f, Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ClampedCornerSize) && this.f11876a == ((ClampedCornerSize) obj).f11876a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11876a)});
    }
}
