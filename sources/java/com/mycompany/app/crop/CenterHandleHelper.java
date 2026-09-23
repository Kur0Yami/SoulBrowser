package com.mycompany.app.crop;

import android.graphics.RectF;

/* loaded from: classes3.dex */
class CenterHandleHelper extends HandleHelper {
    @Override // com.mycompany.app.crop.HandleHelper
    public final void a(float f, float f2, float f3, float f4, RectF rectF) {
        b(f, f2, rectF, f4);
    }

    @Override // com.mycompany.app.crop.HandleHelper
    public final void b(float f, float f2, RectF rectF, float f3) {
        Edge edge = Edge.f;
        float f4 = edge.f12878c;
        Edge edge2 = Edge.g;
        float f5 = edge2.f12878c;
        Edge edge3 = Edge.h;
        float f6 = edge3.f12878c;
        Edge edge4 = Edge.i;
        float f7 = f - ((f4 + f6) / 2.0f);
        float f8 = f2 - ((f5 + edge4.f12878c) / 2.0f);
        edge.f(f7);
        edge2.f(f8);
        edge3.f(f7);
        edge4.f(f8);
        if (edge.e(rectF, f3)) {
            edge3.f(edge.g(rectF));
        } else if (edge3.e(rectF, f3)) {
            edge.f(edge3.g(rectF));
        }
        if (edge2.e(rectF, f3)) {
            edge4.f(edge2.g(rectF));
        } else if (edge4.e(rectF, f3)) {
            edge2.f(edge4.g(rectF));
        }
    }
}
