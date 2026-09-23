package com.mycompany.app.crop;

import android.graphics.RectF;

/* loaded from: classes3.dex */
class CornerHandleHelper extends HandleHelper {
    @Override // com.mycompany.app.crop.HandleHelper
    public final void a(float f, float f2, float f3, float f4, RectF rectF) {
        float f5;
        float f6;
        float f7;
        float f8;
        Edge edge = this.b;
        Edge edge2 = Edge.f;
        if (edge == edge2) {
            f5 = f;
        } else {
            f5 = edge2.f12878c;
        }
        Edge edge3 = this.f12881a;
        Edge edge4 = Edge.g;
        if (edge3 == edge4) {
            f6 = f2;
        } else {
            f6 = edge4.f12878c;
        }
        Edge edge5 = Edge.h;
        if (edge == edge5) {
            f7 = f;
        } else {
            f7 = edge5.f12878c;
        }
        Edge edge6 = Edge.i;
        if (edge3 == edge6) {
            f8 = f2;
        } else {
            f8 = edge6.f12878c;
        }
        float f9 = (f7 - f5) / (f8 - f6);
        EdgePair edgePair = this.f12882c;
        if (f9 > f3) {
            edgePair.f12879a = edge;
            edgePair.b = edge3;
        } else {
            edgePair.f12879a = edge3;
            edgePair.b = edge;
        }
        Edge edge7 = edgePair.f12879a;
        Edge edge8 = edgePair.b;
        edge7.b(f, f2, f4, f3, rectF);
        edge8.a(f3);
        if (edge8.e(rectF, f4)) {
            edge8.g(rectF);
            edge7.a(f3);
        }
    }
}
