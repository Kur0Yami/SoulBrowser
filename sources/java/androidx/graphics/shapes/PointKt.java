package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002*\f\b\u0000\u0010\u0001\"\u00020\u00002\u00020\u0000¨\u0006\u0002"}, d2 = {"Landroidx/collection/FloatFloatPair;", "Point", "graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Point.kt\nandroidx/graphics/shapes/PointKt\n+ 2 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 3 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n48#2:140\n54#2:142\n48#2:144\n54#2:146\n48#2:148\n54#2:150\n22#3:141\n22#3:143\n22#3:145\n22#3:149\n1#4:147\n*S KotlinDebug\n*F\n+ 1 Point.kt\nandroidx/graphics/shapes/PointKt\n*L\n27#1:140\n30#1:142\n32#1:144\n32#1:146\n137#1:148\n137#1:150\n27#1:141\n30#1:143\n32#1:145\n137#1:149\n*E\n"})
/* loaded from: classes.dex */
public final class PointKt {
    public static final long a(long j, float f) {
        return FloatFloatPair.a(d(j) / f, e(j) / f);
    }

    public static final float b(long j, long j2) {
        return (e(j2) * e(j)) + (d(j2) * d(j));
    }

    public static final long c(long j) {
        float sqrt = (float) Math.sqrt((e(j) * e(j)) + (d(j) * d(j)));
        if (sqrt > 0.0f) {
            return a(j, sqrt);
        }
        throw new IllegalArgumentException("Can't get the direction of a 0-length vector");
    }

    public static final float d(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    public static final float e(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    public static final long f(long j, long j2) {
        return FloatFloatPair.a(d(j) - d(j2), e(j) - e(j2));
    }

    public static final long g(long j, long j2) {
        return FloatFloatPair.a(d(j2) + d(j), e(j2) + e(j));
    }

    public static final long h(long j, float f) {
        return FloatFloatPair.a(d(j) * f, e(j) * f);
    }

    public static final long i(long j, PointTransformer f) {
        Intrinsics.checkNotNullParameter(f, "f");
        long a2 = ((Shapes_androidKt$transformed$1) f).a(d(j), e(j));
        return FloatFloatPair.a(Float.intBitsToFloat((int) (a2 >> 32)), Float.intBitsToFloat((int) (a2 & 4294967295L)));
    }
}
