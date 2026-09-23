package androidx.graphics.shapes;

import androidx.graphics.shapes.RoundedPolygon;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shapes.kt\nandroidx/graphics/shapes/ShapesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,459:1\n1360#2:460\n1446#2,5:461\n1360#2:466\n1446#2,5:467\n*S KotlinDebug\n*F\n+ 1 Shapes.kt\nandroidx/graphics/shapes/ShapesKt\n*L\n155#1:460\n155#1:461,5\n294#1:466\n294#1:467,5\n*E\n"})
/* loaded from: classes.dex */
public final class ShapesKt {
    public static RoundedPolygon a(int i) {
        int i2;
        if ((i & 1) != 0) {
            i2 = 8;
        } else {
            i2 = 10;
        }
        Intrinsics.checkNotNullParameter(RoundedPolygon.e, "<this>");
        return RoundedPolygonKt.a(i2, 1.0f / ((float) Math.cos(Utils.b / i2)), new CornerRounding(2), null);
    }

    public static final RoundedPolygon b(float f, CornerRounding rounding, List list) {
        Intrinsics.checkNotNullParameter(RoundedPolygon.e, "<this>");
        Intrinsics.checkNotNullParameter(rounding, "rounding");
        float f2 = 2;
        float f3 = f / f2;
        float f4 = 0.0f - f3;
        float f5 = 1.0f / f2;
        float f6 = 0.0f - f5;
        float f7 = f3 + 0.0f;
        float f8 = f5 + 0.0f;
        return RoundedPolygonKt.b(new float[]{f7, f8, f4, f8, f4, f6, f7, f6}, rounding, list, 0.0f, 0.0f);
    }

    public static final RoundedPolygon c(int i, float f, CornerRounding rounding) {
        RoundedPolygon.Companion companion = RoundedPolygon.e;
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(rounding, "rounding");
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(rounding, "rounding");
        if (f > 0.0f) {
            if (f < 1.0f) {
                float[] fArr = new float[i * 4];
                int i2 = 0;
                for (int i3 = 0; i3 < i; i3++) {
                    float f2 = Utils.b / i;
                    long e = Utils.e(1.0f, 2 * f2 * i3);
                    fArr[i2] = PointKt.d(e) + 0.0f;
                    fArr[i2 + 1] = PointKt.e(e) + 0.0f;
                    long e2 = Utils.e(f, f2 * ((i3 * 2) + 1));
                    int i4 = i2 + 3;
                    fArr[i2 + 2] = PointKt.d(e2) + 0.0f;
                    i2 += 4;
                    fArr[i4] = PointKt.e(e2) + 0.0f;
                }
                return RoundedPolygonKt.b(fArr, rounding, null, 0.0f, 0.0f);
            }
            throw new IllegalArgumentException("innerRadius must be less than radius");
        }
        throw new IllegalArgumentException("Star radii must both be greater than 0");
    }
}
