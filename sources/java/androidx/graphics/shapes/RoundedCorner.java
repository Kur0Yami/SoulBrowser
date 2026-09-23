package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/shapes/RoundedCorner;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class RoundedCorner {

    /* renamed from: a, reason: collision with root package name */
    public final long f1177a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1178c;
    public final long d;
    public final long e;
    public final float f;
    public final float g;
    public final float h;
    public long i;

    public RoundedCorner(long j, long j2, long j3, CornerRounding cornerRounding) {
        float f;
        float f2;
        float f3;
        this.f1177a = j;
        this.b = j2;
        this.f1178c = j3;
        long c2 = PointKt.c(PointKt.f(j, j2));
        this.d = c2;
        long c3 = PointKt.c(PointKt.f(j3, j2));
        this.e = c3;
        if (cornerRounding != null) {
            f = cornerRounding.f1168a;
        } else {
            f = 0.0f;
        }
        this.f = f;
        if (cornerRounding != null) {
            f2 = cornerRounding.b;
        } else {
            f2 = 0.0f;
        }
        this.g = f2;
        float b = PointKt.b(c2, c3);
        float f4 = 1;
        float f5 = Utils.b;
        float sqrt = (float) Math.sqrt(f4 - (b * b));
        if (sqrt > 0.001d) {
            f3 = ((b + f4) * f) / sqrt;
        } else {
            f3 = 0.0f;
        }
        this.h = f3;
        this.i = FloatFloatPair.a(0.0f, 0.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.graphics.shapes.Cubic b(float r16, float r17, long r18, long r20, long r22, long r24, long r26, float r28) {
        /*
            r0 = r17
            r1 = r18
            r3 = r20
            r5 = r26
            long r7 = androidx.graphics.shapes.PointKt.f(r3, r1)
            long r7 = androidx.graphics.shapes.PointKt.c(r7)
            r9 = r16
            long r9 = androidx.graphics.shapes.PointKt.h(r7, r9)
            r11 = 1
            float r12 = (float) r11
            float r12 = r12 + r0
            long r9 = androidx.graphics.shapes.PointKt.h(r9, r12)
            long r1 = androidx.graphics.shapes.PointKt.g(r1, r9)
            long r9 = androidx.graphics.shapes.PointKt.g(r22, r24)
            r12 = 1073741824(0x40000000, float:2.0)
            long r9 = androidx.graphics.shapes.PointKt.a(r9, r12)
            float r13 = androidx.graphics.shapes.PointKt.d(r22)
            float r14 = androidx.graphics.shapes.PointKt.d(r9)
            float r13 = androidx.graphics.shapes.Utils.c(r13, r14, r0)
            float r14 = androidx.graphics.shapes.PointKt.e(r22)
            float r9 = androidx.graphics.shapes.PointKt.e(r9)
            float r0 = androidx.graphics.shapes.Utils.c(r14, r9, r0)
            long r9 = androidx.collection.FloatFloatPair.a(r13, r0)
            float r0 = androidx.graphics.shapes.PointKt.d(r9)
            float r13 = androidx.graphics.shapes.PointKt.d(r5)
            float r0 = r0 - r13
            float r9 = androidx.graphics.shapes.PointKt.e(r9)
            float r10 = androidx.graphics.shapes.PointKt.e(r5)
            float r9 = r9 - r10
            long r9 = androidx.graphics.shapes.Utils.b(r0, r9)
            r0 = r28
            long r9 = androidx.graphics.shapes.PointKt.h(r9, r0)
            long r9 = androidx.graphics.shapes.PointKt.g(r5, r9)
            long r5 = androidx.graphics.shapes.PointKt.f(r9, r5)
            float r0 = androidx.graphics.shapes.PointKt.e(r5)
            float r0 = -r0
            float r5 = androidx.graphics.shapes.PointKt.d(r5)
            long r5 = androidx.collection.FloatFloatPair.a(r0, r5)
            float r0 = androidx.graphics.shapes.PointKt.e(r5)
            float r0 = -r0
            float r5 = androidx.graphics.shapes.PointKt.d(r5)
            long r5 = androidx.collection.FloatFloatPair.a(r0, r5)
            float r0 = androidx.graphics.shapes.PointKt.b(r7, r5)
            float r13 = java.lang.Math.abs(r0)
            r14 = 953267991(0x38d1b717, float:1.0E-4)
            int r13 = (r13 > r14 ? 1 : (r13 == r14 ? 0 : -1))
            if (r13 >= 0) goto L96
        L94:
            r15 = 0
            goto Lbd
        L96:
            r16 = r14
            long r14 = androidx.graphics.shapes.PointKt.f(r9, r3)
            float r5 = androidx.graphics.shapes.PointKt.b(r14, r5)
            float r6 = java.lang.Math.abs(r0)
            float r13 = java.lang.Math.abs(r5)
            float r13 = r13 * r16
            int r6 = (r6 > r13 ? 1 : (r6 == r13 ? 0 : -1))
            if (r6 >= 0) goto Laf
            goto L94
        Laf:
            float r5 = r5 / r0
            long r5 = androidx.graphics.shapes.PointKt.h(r7, r5)
            long r3 = androidx.graphics.shapes.PointKt.g(r3, r5)
            androidx.collection.FloatFloatPair r15 = new androidx.collection.FloatFloatPair
            r15.<init>(r3)
        Lbd:
            if (r15 == 0) goto Lc2
            long r3 = r15.f439a
            goto Lc4
        Lc2:
            r3 = r22
        Lc4:
            long r5 = androidx.graphics.shapes.PointKt.h(r3, r12)
            long r5 = androidx.graphics.shapes.PointKt.g(r1, r5)
            r0 = 1077936128(0x40400000, float:3.0)
            long r5 = androidx.graphics.shapes.PointKt.a(r5, r0)
            androidx.graphics.shapes.Cubic r0 = new androidx.graphics.shapes.Cubic
            float r7 = androidx.graphics.shapes.PointKt.d(r1)
            float r1 = androidx.graphics.shapes.PointKt.e(r1)
            float r2 = androidx.graphics.shapes.PointKt.d(r5)
            float r5 = androidx.graphics.shapes.PointKt.e(r5)
            float r6 = androidx.graphics.shapes.PointKt.d(r3)
            float r3 = androidx.graphics.shapes.PointKt.e(r3)
            float r4 = androidx.graphics.shapes.PointKt.d(r9)
            float r8 = androidx.graphics.shapes.PointKt.e(r9)
            r9 = 8
            float[] r9 = new float[r9]
            r10 = 0
            r9[r10] = r7
            r9[r11] = r1
            r1 = 2
            r9[r1] = r2
            r1 = 3
            r9[r1] = r5
            r1 = 4
            r9[r1] = r6
            r1 = 5
            r9[r1] = r3
            r1 = 6
            r9[r1] = r4
            r1 = 7
            r9[r1] = r8
            r0.<init>(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.graphics.shapes.RoundedCorner.b(float, float, long, long, long, long, long, float):androidx.graphics.shapes.Cubic");
    }

    public final float a(float f) {
        float c2 = c();
        float f2 = this.g;
        if (f > c2) {
            return f2;
        }
        float f3 = this.h;
        if (f > f3) {
            return ((f - f3) * f2) / (c() - f3);
        }
        return 0.0f;
    }

    public final float c() {
        return (1 + this.g) * this.h;
    }
}
