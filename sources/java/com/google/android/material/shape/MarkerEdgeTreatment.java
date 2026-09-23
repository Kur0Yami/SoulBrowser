package com.google.android.material.shape;

/* loaded from: classes3.dex */
public final class MarkerEdgeTreatment extends EdgeTreatment {
    @Override // com.google.android.material.shape.EdgeTreatment
    public final void b(float f, float f2, float f3, ShapePath shapePath) {
        double d = 0.0f;
        float sqrt = (float) ((Math.sqrt(2.0d) * d) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(d, 2.0d) - Math.pow(sqrt, 2.0d));
        shapePath.e(f2 - sqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + sqrt2, 270.0f, 0.0f);
        shapePath.c(f2, (float) (-((Math.sqrt(2.0d) * d) - d)));
        shapePath.c(f2 + sqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + sqrt2);
    }
}
