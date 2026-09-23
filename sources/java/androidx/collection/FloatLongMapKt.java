package androidx.collection;

import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FloatLongMapKt {
    static {
        long[] jArr = ScatterMapKt.f468a;
        float[] fArr = FloatSetKt.f441a;
        int i = LongSetKt.f444a;
        int i2 = 0;
        int c2 = ScatterMapKt.c(0);
        if (c2 > 0) {
            i2 = Math.max(7, ScatterMapKt.b(c2));
        }
        if (i2 != 0) {
            jArr = new long[((i2 + 15) & (-8)) >> 3];
            ArraysKt___ArraysJvmKt.fill$default(jArr, -9187201950435737472L, 0, 0, 6, (Object) null);
        }
        int i3 = i2 >> 3;
        long j = 255 << ((i2 & 7) << 3);
        jArr[i3] = (jArr[i3] & (~j)) | j;
        float[] fArr2 = new float[i2];
        long[] jArr2 = new long[i2];
    }
}
