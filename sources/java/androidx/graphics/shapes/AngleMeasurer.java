package androidx.graphics.shapes;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/shapes/AngleMeasurer;", "Landroidx/graphics/shapes/Measurer;", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AngleMeasurer implements Measurer {

    /* renamed from: a, reason: collision with root package name */
    public final float f1166a;
    public final float b;

    public AngleMeasurer(float f, float f2) {
        this.f1166a = f;
        this.b = f2;
    }

    @Override // androidx.graphics.shapes.Measurer
    public final float a(Cubic c2) {
        Intrinsics.checkNotNullParameter(c2, "c");
        float a2 = c2.a();
        float f = this.f1166a;
        float b = c2.b();
        float f2 = this.b;
        float a3 = Utils.a(a2 - f, b - f2);
        float[] fArr = c2.f1169a;
        float a4 = a3 - Utils.a(fArr[0] - f, fArr[1] - f2);
        float f3 = Utils.f1183c;
        float d = Utils.d(a4, f3);
        if (d > f3 - 1.0E-4f) {
            return 0.0f;
        }
        return d;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.graphics.shapes.a, java.lang.Object] */
    @Override // androidx.graphics.shapes.Measurer
    public final float b(final Cubic c2, final float f) {
        Intrinsics.checkNotNullParameter(c2, "c");
        float[] fArr = c2.f1169a;
        final float a2 = Utils.a(fArr[0] - this.f1166a, fArr[1] - this.b);
        ?? f2 = new FindMinimumFunction() { // from class: androidx.graphics.shapes.a
            public final float a(float f3) {
                Cubic c3 = Cubic.this;
                Intrinsics.checkNotNullParameter(c3, "$c");
                AngleMeasurer this$0 = this;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                long c4 = c3.c(f3);
                return Math.abs(Utils.d(Utils.a(PointKt.d(c4) - this$0.f1166a, PointKt.e(c4) - this$0.b) - a2, Utils.f1183c) - f);
            }
        };
        Intrinsics.checkNotNullParameter(f2, "f");
        float f3 = 0.0f;
        float f4 = 1.0f;
        while (f4 - f3 > 1.0E-5f) {
            float f5 = 2;
            float f6 = 3;
            float f7 = ((f5 * f3) + f4) / f6;
            float f8 = ((f5 * f4) + f3) / f6;
            if (f2.a(f7) < f2.a(f8)) {
                f4 = f8;
            } else {
                f3 = f7;
            }
        }
        return (f3 + f4) / 2;
    }
}
