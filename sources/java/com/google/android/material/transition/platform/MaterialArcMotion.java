package com.google.android.material.transition.platform;

import android.graphics.Path;
import android.graphics.PointF;
import android.transition.PathMotion;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes3.dex */
public final class MaterialArcMotion extends PathMotion {
    @Override // android.transition.PathMotion
    public final Path getPath(float f, float f2, float f3, float f4) {
        PointF pointF;
        Path path = new Path();
        path.moveTo(f, f2);
        if (f2 > f4) {
            pointF = new PointF(f3, f2);
        } else {
            pointF = new PointF(f, f4);
        }
        path.quadTo(pointF.x, pointF.y, f3, f4);
        return path;
    }
}
