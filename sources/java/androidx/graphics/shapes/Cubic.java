package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/graphics/shapes/Cubic;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCubic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/Cubic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n1#2:449\n*E\n"})
/* loaded from: classes.dex */
public class Cubic {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f1169a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/shapes/Cubic$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static Cubic a(float f, float f2, float f3, float f4) {
            return CubicKt.a(f, f2, Utils.c(f, f3, 0.33333334f), Utils.c(f2, f4, 0.33333334f), Utils.c(f, f3, 0.6666667f), Utils.c(f2, f4, 0.6666667f), f3, f4);
        }
    }

    public Cubic(float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        this.f1169a = points;
        if (points.length == 8) {
        } else {
            throw new IllegalArgumentException("Points array size should be 8");
        }
    }

    public final float a() {
        return this.f1169a[6];
    }

    public final float b() {
        return this.f1169a[7];
    }

    public final long c(float f) {
        float f2 = 1 - f;
        float[] fArr = this.f1169a;
        float f3 = f2 * f2 * f2;
        float f4 = 3 * f;
        float f5 = f4 * f2 * f2;
        float f6 = f4 * f * f2;
        float f7 = f * f * f;
        return FloatFloatPair.a((a() * f7) + (fArr[4] * f6) + (fArr[2] * f5) + (fArr[0] * f3), (b() * f7) + (fArr[5] * f6) + (fArr[3] * f5) + (fArr[1] * f3));
    }

    public final Pair d(float f) {
        float f2 = 1 - f;
        long c2 = c(f);
        float[] fArr = this.f1169a;
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = fArr[2];
        float f6 = fArr[3];
        float f7 = f2 * f2;
        float f8 = 2 * f2 * f;
        float f9 = f * f;
        return TuplesKt.to(CubicKt.a(f3, f4, (f5 * f) + (f3 * f2), (f6 * f) + (f4 * f2), (fArr[4] * f9) + (f5 * f8) + (f3 * f7), (fArr[5] * f9) + (f6 * f8) + (f4 * f7), PointKt.d(c2), PointKt.e(c2)), CubicKt.a(PointKt.d(c2), PointKt.e(c2), (a() * f9) + (fArr[4] * f8) + (fArr[2] * f7), (b() * f9) + (fArr[5] * f8) + (fArr[3] * f7), (a() * f) + (fArr[4] * f2), (b() * f) + (fArr[5] * f2), a(), b()));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.graphics.shapes.Cubic, androidx.graphics.shapes.MutableCubic] */
    public final MutableCubic e(PointTransformer f) {
        Intrinsics.checkNotNullParameter(f, "f");
        float[] fArr = new float[8];
        ?? cubic = new Cubic(fArr);
        ArraysKt___ArraysJvmKt.copyInto$default(this.f1169a, fArr, 0, 0, 0, 14, (Object) null);
        Intrinsics.checkNotNullParameter(f, "f");
        cubic.f(f, 0);
        cubic.f(f, 2);
        cubic.f(f, 4);
        cubic.f(f, 6);
        return cubic;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cubic)) {
            return false;
        }
        return Arrays.equals(this.f1169a, ((Cubic) obj).f1169a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1169a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("anchor0: (");
        float[] fArr = this.f1169a;
        sb.append(fArr[0]);
        sb.append(", ");
        sb.append(fArr[1]);
        sb.append(") control0: (");
        sb.append(fArr[2]);
        sb.append(", ");
        sb.append(fArr[3]);
        sb.append("), control1: (");
        sb.append(fArr[4]);
        sb.append(", ");
        sb.append(fArr[5]);
        sb.append("), anchor1: (");
        sb.append(a());
        sb.append(", ");
        sb.append(b());
        sb.append(')');
        return sb.toString();
    }
}
