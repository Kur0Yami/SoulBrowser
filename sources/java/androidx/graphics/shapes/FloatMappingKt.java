package androidx.graphics.shapes;

import androidx.collection.FloatList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFloatMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/FloatList\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1#2:100\n75#3:101\n190#3,3:104\n253#3,4:107\n193#3,2:111\n258#3:113\n195#3:114\n223#4,2:102\n1774#4,4:115\n*S KotlinDebug\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n*L\n42#1:101\n93#1:104,3\n93#1:107,4\n93#1:111,2\n93#1:113\n93#1:114\n42#1:102,2\n96#1:115,4\n*E\n"})
/* loaded from: classes.dex */
public final class FloatMappingKt {
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final float a(androidx.collection.FloatList r7, androidx.collection.FloatList r8, float r9) {
        /*
            java.lang.String r0 = "xValues"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "yValues"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            r0 = 0
            int r0 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            if (r0 > 0) goto L94
            r0 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r1 > 0) goto L94
            r1 = 0
            int r2 = r7.b
            kotlin.ranges.IntRange r1 = kotlin.ranges.RangesKt.until(r1, r2)
            java.util.Iterator r1 = r1.iterator()
        L20:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L8c
            r2 = r1
            kotlin.collections.IntIterator r2 = (kotlin.collections.IntIterator) r2
            int r2 = r2.nextInt()
            float r3 = r7.a(r2)
            int r4 = r2 + 1
            int r5 = r7.b
            int r5 = r4 % r5
            float r5 = r7.a(r5)
            int r6 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r6 < 0) goto L48
            int r3 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r3 > 0) goto L20
            int r3 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r3 > 0) goto L20
            goto L50
        L48:
            int r3 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r3 >= 0) goto L50
            int r3 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r3 > 0) goto L20
        L50:
            int r1 = r7.b
            int r4 = r4 % r1
            float r1 = r7.a(r4)
            float r3 = r7.a(r2)
            float r1 = r1 - r3
            float r1 = androidx.graphics.shapes.Utils.d(r1, r0)
            float r3 = r8.a(r4)
            float r4 = r8.a(r2)
            float r3 = r3 - r4
            float r3 = androidx.graphics.shapes.Utils.d(r3, r0)
            r4 = 981668463(0x3a83126f, float:0.001)
            int r4 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r4 >= 0) goto L77
            r7 = 1056964608(0x3f000000, float:0.5)
            goto L81
        L77:
            float r7 = r7.a(r2)
            float r9 = r9 - r7
            float r7 = androidx.graphics.shapes.Utils.d(r9, r0)
            float r7 = r7 / r1
        L81:
            float r8 = r8.a(r2)
            float r3 = r3 * r7
            float r3 = r3 + r8
            float r7 = androidx.graphics.shapes.Utils.d(r3, r0)
            return r7
        L8c:
            java.util.NoSuchElementException r7 = new java.util.NoSuchElementException
            java.lang.String r8 = "Collection contains no element matching the predicate."
            r7.<init>(r8)
            throw r7
        L94:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r8 = "Invalid progress: "
            r7.<init>(r8)
            r7.append(r9)
            java.lang.String r7 = r7.toString()
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r7 = r7.toString()
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.graphics.shapes.FloatMappingKt.a(androidx.collection.FloatList, androidx.collection.FloatList, float):float");
    }

    public static final void b(FloatList p) {
        int i;
        Intrinsics.checkNotNullParameter(p, "p");
        Boolean bool = Boolean.TRUE;
        float[] fArr = p.f440a;
        int i2 = p.b;
        boolean z = false;
        int i3 = 0;
        while (true) {
            boolean z2 = true;
            if (i3 >= i2) {
                break;
            }
            float f = fArr[i3];
            if (!bool.booleanValue() || 0.0f > f || f > 1.0f) {
                z2 = false;
            }
            bool = Boolean.valueOf(z2);
            i3++;
        }
        if (bool.booleanValue()) {
            Iterable until = RangesKt.until(1, p.b);
            if ((until instanceof Collection) && ((Collection) until).isEmpty()) {
                i = 0;
            } else {
                Iterator it = until.iterator();
                i = 0;
                while (it.hasNext()) {
                    int nextInt = ((IntIterator) it).nextInt();
                    if (p.a(nextInt) < p.a(nextInt - 1) && (i = i + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
            if (i <= 1) {
                z = true;
            }
            if (z) {
                return;
            }
            throw new IllegalArgumentException(("FloatMapping - Progress wraps more than once: " + FloatList.b(p, 31)).toString());
        }
        throw new IllegalArgumentException(("FloatMapping - Progress outside of range: " + FloatList.b(p, 31)).toString());
    }
}
