package com.mycompany.app.crop;

import android.graphics.RectF;

/* loaded from: classes3.dex */
abstract class HandleHelper {

    /* renamed from: a, reason: collision with root package name */
    public final Edge f12881a;
    public final Edge b;

    /* renamed from: c, reason: collision with root package name */
    public final EdgePair f12882c;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.mycompany.app.crop.EdgePair, java.lang.Object] */
    public HandleHelper(Edge edge, Edge edge2) {
        this.f12881a = edge;
        this.b = edge2;
        ?? obj = new Object();
        obj.f12879a = edge;
        obj.b = edge2;
        this.f12882c = obj;
    }

    public abstract void a(float f, float f2, float f3, float f4, RectF rectF);

    public void b(float f, float f2, RectF rectF, float f3) {
        float f4;
        float f5;
        RectF rectF2;
        float f6;
        EdgePair edgePair = this.f12882c;
        Edge edge = edgePair.f12879a;
        Edge edge2 = edgePair.b;
        if (edge != null) {
            f4 = f;
            f5 = f2;
            rectF2 = rectF;
            f6 = f3;
            edge.b(f4, f5, f6, 1.0f, rectF2);
        } else {
            f4 = f;
            f5 = f2;
            rectF2 = rectF;
            f6 = f3;
        }
        if (edge2 != null) {
            float f7 = f6;
            float f8 = f5;
            edge2.b(f4, f8, f7, 1.0f, rectF2);
        }
    }
}
