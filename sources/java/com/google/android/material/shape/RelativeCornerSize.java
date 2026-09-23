package com.google.android.material.shape;

import android.graphics.RectF;
import android.support.v4.media.a;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class RelativeCornerSize implements CornerSize {

    /* renamed from: a, reason: collision with root package name */
    public final float f11886a;

    public RelativeCornerSize(float f) {
        this.f11886a = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    public final float a(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.f11886a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof RelativeCornerSize) && this.f11886a == ((RelativeCornerSize) obj).f11886a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11886a)});
    }

    public final String toString() {
        return a.g((int) (this.f11886a * 100.0f), "%", new StringBuilder());
    }
}
