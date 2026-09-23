package androidx.graphics.shapes;

import android.graphics.Matrix;
import androidx.collection.FloatFloatPair;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Shapes_androidKt {
    public static final RoundedPolygon a(RoundedPolygon roundedPolygon, Matrix matrix) {
        Intrinsics.checkNotNullParameter(roundedPolygon, "<this>");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Shapes_androidKt$transformed$1 f = new Shapes_androidKt$transformed$1(new float[2], matrix);
        roundedPolygon.getClass();
        Intrinsics.checkNotNullParameter(f, "f");
        long i = PointKt.i(FloatFloatPair.a(roundedPolygon.b, roundedPolygon.f1180c), f);
        List createListBuilder = CollectionsKt.createListBuilder();
        List list = roundedPolygon.f1179a;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            createListBuilder.add(((Feature) list.get(i2)).a(f));
        }
        return new RoundedPolygon(CollectionsKt.build(createListBuilder), PointKt.d(i), PointKt.e(i));
    }
}
