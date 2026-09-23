package com.google.android.material.shape;

/* loaded from: classes3.dex */
public class CutCornerTreatment extends CornerTreatment {
    @Override // com.google.android.material.shape.CornerTreatment
    public final void a(ShapePath shapePath, float f, float f2) {
        float f3 = f2 * f;
        shapePath.e(0.0f, f3, 180.0f, 90.0f);
        double d = f3;
        shapePath.c((float) (Math.sin(Math.toRadians(90.0f)) * d), (float) (Math.sin(Math.toRadians(0.0f)) * d));
    }
}
