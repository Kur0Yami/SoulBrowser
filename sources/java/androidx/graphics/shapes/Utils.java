package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "Utils")
@SourceDebugExtension({"SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
/* loaded from: classes.dex */
public final class Utils {

    /* renamed from: a, reason: collision with root package name */
    public static final long f1182a = FloatFloatPair.a(0.0f, 0.0f);
    public static final float b = 3.1415927f;

    /* renamed from: c, reason: collision with root package name */
    public static final float f1183c = 6.2831855f;

    public static final float a(float f, float f2) {
        float atan2 = (float) Math.atan2(f2, f);
        float f3 = f1183c;
        return (atan2 + f3) % f3;
    }

    public static final long b(float f, float f2) {
        float sqrt = (float) Math.sqrt((f2 * f2) + (f * f));
        if (sqrt > 0.0f) {
            return FloatFloatPair.a(f / sqrt, f2 / sqrt);
        }
        throw new IllegalArgumentException("Required distance greater than zero");
    }

    public static final float c(float f, float f2, float f3) {
        return (f3 * f2) + ((1 - f3) * f);
    }

    public static final float d(float f, float f2) {
        return ((f % f2) + f2) % f2;
    }

    public static long e(float f, float f2) {
        double d = f2;
        return PointKt.g(PointKt.h(FloatFloatPair.a((float) Math.cos(d), (float) Math.sin(d)), f), f1182a);
    }
}
