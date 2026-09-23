package com.google.mlkit.vision.common;

/* loaded from: classes3.dex */
final class zza extends PointF3D {
    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof PointF3D) && Float.floatToIntBits(0.0f) == Float.floatToIntBits(0.0f) && Float.floatToIntBits(0.0f) == Float.floatToIntBits(0.0f) && Float.floatToIntBits(0.0f) == Float.floatToIntBits(0.0f)) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Float.floatToIntBits(0.0f) ^ ((((Float.floatToIntBits(0.0f) ^ 1000003) * 1000003) ^ Float.floatToIntBits(0.0f)) * 1000003);
    }

    public final String toString() {
        return "PointF3D{x=0.0, y=0.0, z=0.0}";
    }
}
