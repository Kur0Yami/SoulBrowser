package com.google.android.material.shape;

import com.google.android.material.shape.ShapePath;

/* loaded from: classes3.dex */
public class RoundedCornerTreatment extends CornerTreatment {
    @Override // com.google.android.material.shape.CornerTreatment
    public final void a(ShapePath shapePath, float f, float f2) {
        boolean z;
        float f3;
        float f4 = f2 * f;
        shapePath.e(0.0f, f4, 180.0f, 90.0f);
        float f5 = f4 * 2.0f;
        shapePath.getClass();
        ShapePath.PathArcOperation pathArcOperation = new ShapePath.PathArcOperation(0.0f, 0.0f, f5, f5);
        float f6 = 180.0f;
        pathArcOperation.f = 180.0f;
        pathArcOperation.g = 90.0f;
        shapePath.g.add(pathArcOperation);
        ShapePath.ArcShadowOperation arcShadowOperation = new ShapePath.ArcShadowOperation(pathArcOperation);
        float f7 = 180.0f + 90.0f;
        if (90.0f < 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            f6 = (180.0f + 180.0f) % 360.0f;
        }
        if (z) {
            f3 = (180.0f + f7) % 360.0f;
        } else {
            f3 = f7;
        }
        shapePath.a(f6);
        shapePath.h.add(arcShadowOperation);
        shapePath.e = f3;
        double d = f7;
        shapePath.f11895c = (((f5 - 0.0f) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))) + ((0.0f + f5) * 0.5f);
        shapePath.d = (((f5 - 0.0f) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))) + ((0.0f + f5) * 0.5f);
    }
}
