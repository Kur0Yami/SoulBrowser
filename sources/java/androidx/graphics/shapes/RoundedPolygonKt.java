package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.collection.MutableFloatList;
import androidx.graphics.shapes.Cubic;
import androidx.graphics.shapes.Feature;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 4 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n*L\n1#1,686:1\n1549#2:687\n1620#2,3:688\n67#3:691\n81#3:693\n22#4:692\n22#4:694\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n*L\n356#1:687\n356#1:688,3\n426#1:691\n425#1:693\n426#1:692\n425#1:694\n*E\n"})
/* loaded from: classes.dex */
public final class RoundedPolygonKt {
    public static final RoundedPolygon a(int i, float f, CornerRounding rounding, List list) {
        Intrinsics.checkNotNullParameter(rounding, "rounding");
        float[] fArr = new float[i * 2];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            long g = PointKt.g(Utils.e(f, (Utils.b / i) * 2 * i3), FloatFloatPair.a(0.0f, 0.0f));
            int i4 = i2 + 1;
            fArr[i2] = PointKt.d(g);
            i2 += 2;
            fArr[i4] = PointKt.e(g);
        }
        return b(fArr, rounding, list, 0.0f, 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final RoundedPolygon b(float[] vertices, CornerRounding rounding, List list, float f, float f2) {
        long a2;
        boolean z;
        ArrayList arrayList;
        ArrayList arrayList2;
        List listOf;
        int i;
        float f3;
        Cubic a3;
        Pair pair;
        CornerRounding cornerRounding;
        CornerRounding cornerRounding2;
        Float valueOf = Float.valueOf(1.0f);
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        Intrinsics.checkNotNullParameter(rounding, "rounding");
        if (vertices.length >= 6) {
            int i2 = 2;
            int i3 = 1;
            if (vertices.length % 2 != 1) {
                if (list != null && list.size() * 2 != vertices.length) {
                    throw new IllegalArgumentException("perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)");
                }
                ArrayList arrayList3 = new ArrayList();
                int length = vertices.length / 2;
                ArrayList arrayList4 = new ArrayList();
                int i4 = 0;
                int i5 = 0;
                while (i5 < length) {
                    if (list != null && (cornerRounding2 = (CornerRounding) list.get(i5)) != null) {
                        cornerRounding = cornerRounding2;
                    } else {
                        cornerRounding = rounding;
                    }
                    int i6 = (((i5 + length) - 1) % length) * 2;
                    int i7 = i5 + 1;
                    int i8 = (i7 % length) * 2;
                    int i9 = i5 * 2;
                    arrayList4.add(new RoundedCorner(FloatFloatPair.a(vertices[i6], vertices[i6 + 1]), FloatFloatPair.a(vertices[i9], vertices[i9 + 1]), FloatFloatPair.a(vertices[i8], vertices[i8 + 1]), cornerRounding));
                    i5 = i7;
                }
                IntRange until = RangesKt.until(0, length);
                ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(until, 10));
                Iterator<Integer> it = until.iterator();
                while (it.hasNext()) {
                    int nextInt = ((IntIterator) it).nextInt();
                    int i10 = (nextInt + 1) % length;
                    float f4 = ((RoundedCorner) arrayList4.get(nextInt)).h + ((RoundedCorner) arrayList4.get(i10)).h;
                    float c2 = ((RoundedCorner) arrayList4.get(nextInt)).c() + ((RoundedCorner) arrayList4.get(i10)).c();
                    int i11 = nextInt * 2;
                    float f5 = vertices[i11];
                    float f6 = vertices[i11 + 1];
                    int i12 = i10 * 2;
                    float f7 = f5 - vertices[i12];
                    float f8 = f6 - vertices[i12 + 1];
                    float f9 = Utils.b;
                    float sqrt = (float) Math.sqrt((f8 * f8) + (f7 * f7));
                    if (f4 > sqrt) {
                        pair = TuplesKt.to(Float.valueOf(sqrt / f4), Float.valueOf(0.0f));
                    } else if (c2 > sqrt) {
                        pair = TuplesKt.to(valueOf, Float.valueOf((sqrt - f4) / (c2 - f4)));
                    } else {
                        pair = TuplesKt.to(valueOf, valueOf);
                    }
                    arrayList5.add(pair);
                }
                int i13 = 0;
                while (i13 < length) {
                    MutableFloatList mutableFloatList = new MutableFloatList(i2);
                    for (int i14 = i4; i14 < i2; i14++) {
                        Pair pair2 = (Pair) arrayList5.get((((i13 + length) - i3) + i14) % length);
                        mutableFloatList.c(((((RoundedCorner) arrayList4.get(i13)).c() - ((RoundedCorner) arrayList4.get(i13)).h) * ((Number) pair2.component2()).floatValue()) + (((RoundedCorner) arrayList4.get(i13)).h * ((Number) pair2.component1()).floatValue()));
                    }
                    RoundedCorner roundedCorner = (RoundedCorner) arrayList4.get(i13);
                    float a4 = mutableFloatList.a(i4);
                    float a5 = mutableFloatList.a(i3);
                    long j = roundedCorner.e;
                    long j2 = roundedCorner.d;
                    int i15 = i4;
                    float f10 = roundedCorner.f;
                    int i16 = i3;
                    int i17 = length;
                    long j3 = roundedCorner.b;
                    int i18 = i2;
                    float min = Math.min(a4, a5);
                    int i19 = i13;
                    float f11 = roundedCorner.h;
                    if (f11 < 1.0E-4f || min < 1.0E-4f || f10 < 1.0E-4f) {
                        arrayList = arrayList5;
                        arrayList2 = arrayList3;
                        roundedCorner.i = j3;
                        listOf = CollectionsKt.listOf(Cubic.Companion.a(PointKt.d(j3), PointKt.e(j3), PointKt.d(j3), PointKt.e(j3)));
                    } else {
                        float min2 = Math.min(min, f11);
                        float a6 = roundedCorner.a(a4);
                        float a7 = roundedCorner.a(a5);
                        float f12 = (f10 * min2) / f11;
                        float f13 = Utils.b;
                        arrayList = arrayList5;
                        roundedCorner.i = PointKt.g(j3, PointKt.h(PointKt.c(PointKt.a(PointKt.g(j2, j), 2.0f)), (float) Math.sqrt((min2 * min2) + (f12 * f12))));
                        long g = PointKt.g(j3, PointKt.h(j2, min2));
                        long g2 = PointKt.g(j3, PointKt.h(j, min2));
                        Cubic b = RoundedCorner.b(min2, a6, roundedCorner.b, roundedCorner.f1177a, g, g2, roundedCorner.i, f12);
                        Cubic b2 = RoundedCorner.b(min2, a7, roundedCorner.b, roundedCorner.f1178c, g2, g, roundedCorner.i, f12);
                        float a8 = b2.a();
                        float b3 = b2.b();
                        float[] fArr = b2.f1169a;
                        Cubic a9 = CubicKt.a(a8, b3, fArr[4], fArr[5], fArr[i18], fArr[3], fArr[i15], fArr[i16]);
                        float d = PointKt.d(roundedCorner.i);
                        float e = PointKt.e(roundedCorner.i);
                        float a10 = b.a();
                        float b4 = b.b();
                        float[] fArr2 = a9.f1169a;
                        float f14 = fArr2[i15];
                        float f15 = fArr2[i16];
                        long b5 = Utils.b(a10 - d, b4 - e);
                        float f16 = f14 - d;
                        float f17 = f15 - e;
                        arrayList2 = arrayList3;
                        long b6 = Utils.b(f16, f17);
                        long a11 = FloatFloatPair.a(-PointKt.e(b5), PointKt.d(b5));
                        long a12 = FloatFloatPair.a(-PointKt.e(b6), PointKt.d(b6));
                        if ((PointKt.e(a11) * f17) + (PointKt.d(a11) * f16) >= 0.0f) {
                            i = i16;
                        } else {
                            i = i15;
                        }
                        float b7 = PointKt.b(b5, b6);
                        if (b7 > 0.999f) {
                            a3 = Cubic.Companion.a(a10, b4, f14, f15);
                        } else {
                            float sqrt2 = (((float) Math.sqrt((r13 * r13) + (r12 * r12))) * 4.0f) / 3.0f;
                            float sqrt3 = ((((float) Math.sqrt(i18 * r6)) - ((float) Math.sqrt(r13 - (b7 * b7)))) * sqrt2) / (i16 - b7);
                            if (i != 0) {
                                f3 = 1.0f;
                            } else {
                                f3 = -1.0f;
                            }
                            float f18 = sqrt3 * f3;
                            a3 = CubicKt.a(a10, b4, (PointKt.d(a11) * f18) + a10, (PointKt.e(a11) * f18) + b4, f14 - (PointKt.d(a12) * f18), f15 - (PointKt.e(a12) * f18), f14, f15);
                        }
                        Cubic[] cubicArr = new Cubic[3];
                        cubicArr[i15] = b;
                        cubicArr[1] = a3;
                        cubicArr[2] = a9;
                        listOf = CollectionsKt.listOf((Object[]) cubicArr);
                    }
                    ArrayList arrayList6 = arrayList2;
                    arrayList6.add(listOf);
                    i13 = i19 + 1;
                    arrayList3 = arrayList6;
                    i4 = i15;
                    length = i17;
                    i2 = 2;
                    i3 = 1;
                    arrayList5 = arrayList;
                }
                ArrayList arrayList7 = arrayList3;
                int i20 = i4;
                ArrayList arrayList8 = new ArrayList();
                int i21 = i20;
                while (i21 < length) {
                    int B = android.support.v4.media.a.B(i21, length, 1, length);
                    int i22 = i21 + 1;
                    int i23 = i22 % length;
                    int i24 = i21 * 2;
                    long a13 = FloatFloatPair.a(vertices[i24], vertices[i24 + 1]);
                    int i25 = B * 2;
                    long a14 = FloatFloatPair.a(vertices[i25], vertices[i25 + 1]);
                    int i26 = i23 * 2;
                    long a15 = FloatFloatPair.a(vertices[i26], vertices[i26 + 1]);
                    long f19 = PointKt.f(a13, a14);
                    long f20 = PointKt.f(a15, a13);
                    if ((PointKt.e(f20) * PointKt.d(f19)) - (PointKt.d(f20) * PointKt.e(f19)) > 0.0f) {
                        z = 1;
                    } else {
                        z = i20;
                    }
                    arrayList8.add(new Feature.Corner((List) arrayList7.get(i21), a13, ((RoundedCorner) arrayList4.get(i21)).i, z));
                    arrayList8.add(new Feature.Edge(CollectionsKt.listOf(Cubic.Companion.a(((Cubic) CollectionsKt.last((List) arrayList7.get(i21))).a(), ((Cubic) CollectionsKt.last((List) arrayList7.get(i21))).b(), ((Cubic) CollectionsKt.first((List) arrayList7.get(i23))).f1169a[i20], ((Cubic) CollectionsKt.first((List) arrayList7.get(i23))).f1169a[1]))));
                    i21 = i22;
                }
                if (f == Float.MIN_VALUE || f2 == Float.MIN_VALUE) {
                    float f21 = 0.0f;
                    float f22 = 0.0f;
                    int i27 = i20;
                    while (i27 < vertices.length) {
                        int i28 = i27 + 1;
                        f22 += vertices[i27];
                        i27 += 2;
                        f21 += vertices[i28];
                    }
                    float f23 = 2;
                    a2 = FloatFloatPair.a((f22 / vertices.length) / f23, (f21 / vertices.length) / f23);
                } else {
                    a2 = FloatFloatPair.a(f, f2);
                }
                return new RoundedPolygon(arrayList8, Float.intBitsToFloat((int) (a2 >> 32)), Float.intBitsToFloat((int) (a2 & 4294967295L)));
            }
            throw new IllegalArgumentException("The vertices array should have even size");
        }
        throw new IllegalArgumentException("Polygons must have at least 3 vertices");
    }
}
