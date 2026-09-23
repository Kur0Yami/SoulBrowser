package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class AbsoluteCornerSize implements CornerSize {

    /* renamed from: a, reason: collision with root package name */
    public final float f11874a;

    public AbsoluteCornerSize(float f) {
        this.f11874a = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    public final float a(RectF rectF) {
        return this.f11874a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AbsoluteCornerSize) && this.f11874a == ((AbsoluteCornerSize) obj).f11874a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11874a)});
    }

    public final String toString() {
        return this.f11874a + "px";
    }
}
