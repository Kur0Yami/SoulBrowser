package androidx.collection;

import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ObjectFloatMapKt {
    static {
        long[] jArr = ScatterMapKt.f468a;
        float[] fArr = FloatSetKt.f441a;
        int i = 0;
        int c2 = ScatterMapKt.c(0);
        if (c2 > 0) {
            i = Math.max(7, ScatterMapKt.b(c2));
        }
        if (i != 0) {
            jArr = new long[((i + 15) & (-8)) >> 3];
            ArraysKt___ArraysJvmKt.fill$default(jArr, -9187201950435737472L, 0, 0, 6, (Object) null);
        }
        int i2 = i >> 3;
        long j = 255 << ((i & 7) << 3);
        jArr[i2] = (jArr[i2] & (~j)) | j;
        Object[] objArr = new Object[i];
        float[] fArr2 = new float[i];
    }
}
