package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.RestrictTo;
import androidx.graphics.shapes.CornerRounding;
import androidx.graphics.shapes.Cubic;
import androidx.graphics.shapes.PointKt;
import androidx.graphics.shapes.RoundedPolygon;
import androidx.graphics.shapes.RoundedPolygonKt;
import androidx.graphics.shapes.ShapesKt;
import androidx.graphics.shapes.Shapes_androidKt;
import androidx.graphics.shapes.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

@RestrictTo
/* loaded from: classes3.dex */
public final class MaterialShapes {

    /* renamed from: a, reason: collision with root package name */
    public static final RoundedPolygon f11883a;
    public static final RoundedPolygon b;

    /* renamed from: c, reason: collision with root package name */
    public static final RoundedPolygon f11884c;
    public static final RoundedPolygon d;
    public static final RoundedPolygon e;
    public static final RoundedPolygon f;
    public static final RoundedPolygon g;

    /* loaded from: classes3.dex */
    public static class VertexAndRounding {

        /* renamed from: a, reason: collision with root package name */
        public final PointF f11885a;
        public final CornerRounding b;

        public VertexAndRounding(PointF pointF) {
            this(pointF, CornerRounding.f1167c);
        }

        public VertexAndRounding(PointF pointF, CornerRounding cornerRounding) {
            this.f11885a = pointF;
            this.b = cornerRounding;
        }
    }

    static {
        CornerRounding cornerRounding = new CornerRounding(0.15f, 0.0f);
        CornerRounding rounding = new CornerRounding(0.2f, 0.0f);
        CornerRounding cornerRounding2 = new CornerRounding(0.3f, 0.0f);
        CornerRounding cornerRounding3 = new CornerRounding(0.5f, 0.0f);
        CornerRounding cornerRounding4 = new CornerRounding(1.0f, 0.0f);
        RoundedPolygon.Companion companion = RoundedPolygon.e;
        Intrinsics.checkNotNullParameter(companion, "<this>");
        c(ShapesKt.a(14));
        c(ShapesKt.b(1.0f, cornerRounding2, null));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VertexAndRounding(new PointF(0.926f, 0.97f), new CornerRounding(0.189f, 0.811f)));
        arrayList.add(new VertexAndRounding(new PointF(-0.021f, 0.967f), new CornerRounding(0.187f, 0.057f)));
        c(b(2, arrayList, false));
        CornerRounding cornerRounding5 = CornerRounding.f1167c;
        c(Shapes_androidKt.a(RoundedPolygonKt.a(4, 1.0f, cornerRounding5, Arrays.asList(cornerRounding4, cornerRounding4, rounding, rounding)), a(-135.0f)));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new VertexAndRounding(new PointF(1.0f, 1.0f), new CornerRounding(0.148f, 0.417f)));
        arrayList2.add(new VertexAndRounding(new PointF(0.0f, 1.0f), new CornerRounding(0.151f, 0.0f)));
        arrayList2.add(new VertexAndRounding(new PointF(0.0f, 0.0f), new CornerRounding(0.148f, 0.0f)));
        arrayList2.add(new VertexAndRounding(new PointF(0.978f, 0.02f), new CornerRounding(0.803f, 0.0f)));
        c(b(1, arrayList2, false));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new VertexAndRounding(new PointF(0.5f, 0.892f), new CornerRounding(0.313f, 0.0f)));
        arrayList3.add(new VertexAndRounding(new PointF(-0.216f, 1.05f), new CornerRounding(0.207f, 0.0f)));
        arrayList3.add(new VertexAndRounding(new PointF(0.499f, -0.16f), new CornerRounding(0.215f, 1.0f)));
        arrayList3.add(new VertexAndRounding(new PointF(1.225f, 1.06f), new CornerRounding(0.211f, 0.0f)));
        c(b(1, arrayList3, false));
        c(ShapesKt.b(1.6f, cornerRounding5, Arrays.asList(rounding, rounding, cornerRounding4, cornerRounding4)));
        Intrinsics.checkNotNullParameter(companion, "<this>");
        RoundedPolygon a2 = ShapesKt.a(15);
        Matrix matrix = new Matrix();
        matrix.setScale(1.0f, 0.64f);
        f11883a = c(Shapes_androidKt.a(Shapes_androidKt.a(a2, matrix), a(-45.0f)));
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(new VertexAndRounding(new PointF(0.961f, 0.039f), new CornerRounding(0.426f, 0.0f)));
        arrayList4.add(new VertexAndRounding(new PointF(1.001f, 0.428f)));
        arrayList4.add(new VertexAndRounding(new PointF(1.0f, 0.609f), cornerRounding4));
        b = c(b(2, arrayList4, true));
        Intrinsics.checkNotNullParameter(rounding, "rounding");
        c(Shapes_androidKt.a(RoundedPolygonKt.a(3, 1.0f, rounding, null), a(-90.0f)));
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(new VertexAndRounding(new PointF(0.5f, 1.096f), new CornerRounding(0.151f, 0.524f)));
        arrayList5.add(new VertexAndRounding(new PointF(0.04f, 0.5f), new CornerRounding(0.159f, 0.0f)));
        c(b(2, arrayList5, false));
        ArrayList arrayList6 = new ArrayList();
        arrayList6.add(new VertexAndRounding(new PointF(0.171f, 0.841f), new CornerRounding(0.159f, 0.0f)));
        arrayList6.add(new VertexAndRounding(new PointF(-0.02f, 0.5f), new CornerRounding(0.14f, 0.0f)));
        arrayList6.add(new VertexAndRounding(new PointF(0.17f, 0.159f), new CornerRounding(0.159f, 0.0f)));
        c(b(2, arrayList6, false));
        ArrayList arrayList7 = new ArrayList();
        arrayList7.add(new VertexAndRounding(new PointF(0.5f, -0.009f), new CornerRounding(0.172f, 0.0f)));
        f11884c = c(b(5, arrayList7, false));
        ArrayList arrayList8 = new ArrayList();
        arrayList8.add(new VertexAndRounding(new PointF(0.499f, 1.023f), new CornerRounding(0.241f, 0.778f)));
        arrayList8.add(new VertexAndRounding(new PointF(-0.005f, 0.792f), new CornerRounding(0.208f, 0.0f)));
        arrayList8.add(new VertexAndRounding(new PointF(0.073f, 0.258f), new CornerRounding(0.228f, 0.0f)));
        arrayList8.add(new VertexAndRounding(new PointF(0.433f, -0.0f), new CornerRounding(0.491f, 0.0f)));
        c(Shapes_androidKt.a(b(1, arrayList8, true), a(-90.0f)));
        d = c(ShapesKt.c(8, 0.8f, cornerRounding));
        ArrayList arrayList9 = new ArrayList();
        arrayList9.add(new VertexAndRounding(new PointF(0.5f, 1.08f), new CornerRounding(0.085f, 0.0f)));
        arrayList9.add(new VertexAndRounding(new PointF(0.358f, 0.843f), new CornerRounding(0.085f, 0.0f)));
        c(b(8, arrayList9, false));
        ArrayList arrayList10 = new ArrayList();
        arrayList10.add(new VertexAndRounding(new PointF(1.237f, 1.236f), new CornerRounding(0.258f, 0.0f)));
        arrayList10.add(new VertexAndRounding(new PointF(0.5f, 0.918f), new CornerRounding(0.233f, 0.0f)));
        e = c(b(4, arrayList10, false));
        ArrayList arrayList11 = new ArrayList();
        arrayList11.add(new VertexAndRounding(new PointF(0.723f, 0.884f), new CornerRounding(0.394f, 0.0f)));
        arrayList11.add(new VertexAndRounding(new PointF(0.5f, 1.099f), new CornerRounding(0.398f, 0.0f)));
        c(b(6, arrayList11, false));
        c(Shapes_androidKt.a(ShapesKt.c(7, 0.75f, cornerRounding3), a(-90.0f)));
        f = c(Shapes_androidKt.a(ShapesKt.c(9, 0.8f, cornerRounding3), a(-90.0f)));
        c(Shapes_androidKt.a(ShapesKt.c(12, 0.8f, cornerRounding3), a(-90.0f)));
        ArrayList arrayList12 = new ArrayList();
        arrayList12.add(new VertexAndRounding(new PointF(0.5f, 0.0f), cornerRounding4));
        arrayList12.add(new VertexAndRounding(new PointF(1.0f, 0.0f), cornerRounding4));
        arrayList12.add(new VertexAndRounding(new PointF(1.0f, 1.14f), new CornerRounding(0.254f, 0.106f)));
        arrayList12.add(new VertexAndRounding(new PointF(0.575f, 0.906f), new CornerRounding(0.253f, 0.0f)));
        c(b(1, arrayList12, true));
        ArrayList arrayList13 = new ArrayList();
        arrayList13.add(new VertexAndRounding(new PointF(0.5f, 0.074f)));
        arrayList13.add(new VertexAndRounding(new PointF(0.725f, -0.099f), new CornerRounding(0.476f, 0.0f)));
        c(b(4, arrayList13, true));
        ArrayList arrayList14 = new ArrayList();
        arrayList14.add(new VertexAndRounding(new PointF(0.5f, 0.036f)));
        arrayList14.add(new VertexAndRounding(new PointF(0.758f, -0.101f), new CornerRounding(0.209f, 0.0f)));
        c(b(8, arrayList14, false));
        ArrayList arrayList15 = new ArrayList();
        arrayList15.add(new VertexAndRounding(new PointF(0.5f, -0.006f), new CornerRounding(0.006f, 0.0f)));
        arrayList15.add(new VertexAndRounding(new PointF(0.592f, 0.158f), new CornerRounding(0.006f, 0.0f)));
        c(b(12, arrayList15, false));
        ArrayList arrayList16 = new ArrayList();
        arrayList16.add(new VertexAndRounding(new PointF(0.193f, 0.277f), new CornerRounding(0.053f, 0.0f)));
        arrayList16.add(new VertexAndRounding(new PointF(0.176f, 0.055f), new CornerRounding(0.053f, 0.0f)));
        g = c(b(10, arrayList16, false));
        ArrayList arrayList17 = new ArrayList();
        arrayList17.add(new VertexAndRounding(new PointF(0.457f, 0.296f), new CornerRounding(0.007f, 0.0f)));
        arrayList17.add(new VertexAndRounding(new PointF(0.5f, -0.051f), new CornerRounding(0.007f, 0.0f)));
        c(b(15, arrayList17, false));
        ArrayList arrayList18 = new ArrayList();
        arrayList18.add(new VertexAndRounding(new PointF(0.733f, 0.454f)));
        arrayList18.add(new VertexAndRounding(new PointF(0.839f, 0.437f), new CornerRounding(0.532f, 0.0f)));
        arrayList18.add(new VertexAndRounding(new PointF(0.949f, 0.449f), new CornerRounding(0.439f, 1.0f)));
        arrayList18.add(new VertexAndRounding(new PointF(0.998f, 0.478f), new CornerRounding(0.174f, 0.0f)));
        c(b(16, arrayList18, true));
        ArrayList arrayList19 = new ArrayList();
        arrayList19.add(new VertexAndRounding(new PointF(0.37f, 0.187f)));
        arrayList19.add(new VertexAndRounding(new PointF(0.416f, 0.049f), new CornerRounding(0.381f, 0.0f)));
        arrayList19.add(new VertexAndRounding(new PointF(0.479f, 0.0f), new CornerRounding(0.095f, 0.0f)));
        c(b(8, arrayList19, true));
        ArrayList arrayList20 = new ArrayList();
        arrayList20.add(new VertexAndRounding(new PointF(0.5f, 0.053f)));
        arrayList20.add(new VertexAndRounding(new PointF(0.545f, -0.04f), new CornerRounding(0.405f, 0.0f)));
        arrayList20.add(new VertexAndRounding(new PointF(0.67f, -0.035f), new CornerRounding(0.426f, 0.0f)));
        arrayList20.add(new VertexAndRounding(new PointF(0.717f, 0.066f), new CornerRounding(0.574f, 0.0f)));
        arrayList20.add(new VertexAndRounding(new PointF(0.722f, 0.128f)));
        arrayList20.add(new VertexAndRounding(new PointF(0.777f, 0.002f), new CornerRounding(0.36f, 0.0f)));
        arrayList20.add(new VertexAndRounding(new PointF(0.914f, 0.149f), new CornerRounding(0.66f, 0.0f)));
        arrayList20.add(new VertexAndRounding(new PointF(0.926f, 0.289f), new CornerRounding(0.66f, 0.0f)));
        arrayList20.add(new VertexAndRounding(new PointF(0.881f, 0.346f)));
        arrayList20.add(new VertexAndRounding(new PointF(0.94f, 0.344f), new CornerRounding(0.126f, 0.0f)));
        arrayList20.add(new VertexAndRounding(new PointF(1.003f, 0.437f), new CornerRounding(0.255f, 0.0f)));
        RoundedPolygon b2 = b(2, arrayList20, true);
        Matrix matrix2 = new Matrix();
        matrix2.setScale(1.0f, 0.742f);
        c(Shapes_androidKt.a(b2, matrix2));
        ArrayList arrayList21 = new ArrayList();
        arrayList21.add(new VertexAndRounding(new PointF(0.87f, 0.13f), new CornerRounding(0.146f, 0.0f)));
        arrayList21.add(new VertexAndRounding(new PointF(0.818f, 0.357f)));
        arrayList21.add(new VertexAndRounding(new PointF(1.0f, 0.332f), new CornerRounding(0.853f, 0.0f)));
        c(b(4, arrayList21, true));
        ArrayList arrayList22 = new ArrayList();
        arrayList22.add(new VertexAndRounding(new PointF(0.5f, 0.0f)));
        arrayList22.add(new VertexAndRounding(new PointF(0.704f, 0.0f)));
        arrayList22.add(new VertexAndRounding(new PointF(0.704f, 0.065f)));
        arrayList22.add(new VertexAndRounding(new PointF(0.843f, 0.065f)));
        arrayList22.add(new VertexAndRounding(new PointF(0.843f, 0.148f)));
        arrayList22.add(new VertexAndRounding(new PointF(0.926f, 0.148f)));
        arrayList22.add(new VertexAndRounding(new PointF(0.926f, 0.296f)));
        arrayList22.add(new VertexAndRounding(new PointF(1.0f, 0.296f)));
        c(b(2, arrayList22, true));
        ArrayList arrayList23 = new ArrayList();
        arrayList23.add(new VertexAndRounding(new PointF(0.11f, 0.5f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.113f, 0.0f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.287f, 0.0f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.287f, 0.087f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.421f, 0.087f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.421f, 0.17f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.56f, 0.17f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.56f, 0.265f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.674f, 0.265f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.675f, 0.344f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.789f, 0.344f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.789f, 0.439f)));
        arrayList23.add(new VertexAndRounding(new PointF(0.888f, 0.439f)));
        c(b(1, arrayList23, true));
        ArrayList arrayList24 = new ArrayList();
        arrayList24.add(new VertexAndRounding(new PointF(0.796f, 0.5f)));
        arrayList24.add(new VertexAndRounding(new PointF(0.853f, 0.518f), cornerRounding4));
        arrayList24.add(new VertexAndRounding(new PointF(0.992f, 0.631f), cornerRounding4));
        arrayList24.add(new VertexAndRounding(new PointF(0.968f, 1.0f), cornerRounding4));
        c(b(2, arrayList24, true));
        ArrayList arrayList25 = new ArrayList();
        arrayList25.add(new VertexAndRounding(new PointF(0.5f, 0.268f), new CornerRounding(0.016f, 0.0f)));
        arrayList25.add(new VertexAndRounding(new PointF(0.792f, -0.066f), new CornerRounding(0.958f, 0.0f)));
        arrayList25.add(new VertexAndRounding(new PointF(1.064f, 0.276f), cornerRounding4));
        arrayList25.add(new VertexAndRounding(new PointF(0.501f, 0.946f), new CornerRounding(0.129f, 0.0f)));
        c(b(1, arrayList25, true));
    }

    public static Matrix a(float f2) {
        Matrix matrix = new Matrix();
        matrix.setRotate(f2);
        return matrix;
    }

    public static RoundedPolygon b(int i, ArrayList arrayList, boolean z) {
        boolean z2;
        int i2;
        float f2;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.clear();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            PointF pointF = ((VertexAndRounding) obj).f11885a;
            pointF.offset(-0.5f, -0.5f);
            float atan2 = (float) Math.atan2(pointF.y, pointF.x);
            float hypot = (float) Math.hypot(pointF.x, pointF.y);
            pointF.x = atan2;
            pointF.y = hypot;
        }
        float f3 = (float) (6.283185307179586d / i);
        if (z) {
            int i4 = i * 2;
            float f4 = f3 / 2.0f;
            for (int i5 = 0; i5 < i4; i5++) {
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    if (i5 % 2 != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        i2 = (arrayList.size() - 1) - i6;
                    } else {
                        i2 = i6;
                    }
                    VertexAndRounding vertexAndRounding = (VertexAndRounding) arrayList.get(i2);
                    if (i2 > 0 || !z2) {
                        float f5 = i5 * f4;
                        if (z2) {
                            f2 = (((VertexAndRounding) arrayList.get(0)).f11885a.x * 2.0f) + (f4 - vertexAndRounding.f11885a.x);
                        } else {
                            f2 = vertexAndRounding.f11885a.x;
                        }
                        arrayList2.add(new VertexAndRounding(new PointF(f5 + f2, vertexAndRounding.f11885a.y), vertexAndRounding.b));
                    }
                }
            }
        } else {
            for (int i7 = 0; i7 < i; i7++) {
                int size2 = arrayList.size();
                int i8 = 0;
                while (i8 < size2) {
                    Object obj2 = arrayList.get(i8);
                    i8++;
                    VertexAndRounding vertexAndRounding2 = (VertexAndRounding) obj2;
                    arrayList2.add(new VertexAndRounding(new PointF((i7 * f3) + vertexAndRounding2.f11885a.x, vertexAndRounding2.f11885a.y), vertexAndRounding2.b));
                }
            }
        }
        int size3 = arrayList2.size();
        int i9 = 0;
        while (i9 < size3) {
            Object obj3 = arrayList2.get(i9);
            i9++;
            PointF pointF2 = ((VertexAndRounding) obj3).f11885a;
            double d2 = 0.5f;
            float cos = (float) ((Math.cos(pointF2.x) * pointF2.y) + d2);
            float sin = (float) ((Math.sin(pointF2.x) * pointF2.y) + d2);
            pointF2.x = cos;
            pointF2.y = sin;
        }
        float[] fArr = new float[arrayList2.size() * 2];
        for (int i10 = 0; i10 < arrayList2.size(); i10++) {
            int i11 = i10 * 2;
            fArr[i11] = ((VertexAndRounding) arrayList2.get(i10)).f11885a.x;
            fArr[i11 + 1] = ((VertexAndRounding) arrayList2.get(i10)).f11885a.y;
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            arrayList3.add(((VertexAndRounding) arrayList2.get(i12)).b);
        }
        return RoundedPolygonKt.b(fArr, CornerRounding.f1167c, arrayList3, 0.5f, 0.5f);
    }

    public static RoundedPolygon c(RoundedPolygon roundedPolygon) {
        return d(roundedPolygon, new RectF(0.0f, 0.0f, 1.0f, 1.0f));
    }

    public static RoundedPolygon d(RoundedPolygon roundedPolygon, RectF rectF) {
        float[] bounds = new float[4];
        List list = roundedPolygon.d;
        float f2 = roundedPolygon.f1180c;
        float f3 = roundedPolygon.b;
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        int size = list.size();
        float f4 = 0.0f;
        for (int i = 0; i < size; i++) {
            Cubic cubic = (Cubic) list.get(i);
            float[] fArr = cubic.f1169a;
            float f5 = fArr[0] - f3;
            float f6 = fArr[1] - f2;
            float f7 = Utils.b;
            float f8 = (f6 * f6) + (f5 * f5);
            long c2 = cubic.c(0.5f);
            float d2 = PointKt.d(c2) - f3;
            float e2 = PointKt.e(c2) - f2;
            f4 = Math.max(f4, Math.max(f8, (e2 * e2) + (d2 * d2)));
        }
        float sqrt = (float) Math.sqrt(f4);
        bounds[0] = f3 - sqrt;
        bounds[1] = f2 - sqrt;
        bounds[2] = f3 + sqrt;
        bounds[3] = f2 + sqrt;
        RectF rectF2 = new RectF(bounds[0], bounds[1], bounds[2], bounds[3]);
        float min = Math.min(rectF.width() / rectF2.width(), rectF.height() / rectF2.height());
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        matrix.preTranslate(-rectF2.centerX(), -rectF2.centerY());
        matrix.postTranslate(rectF.centerX(), rectF.centerY());
        return Shapes_androidKt.a(roundedPolygon, matrix);
    }
}
