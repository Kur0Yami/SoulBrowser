package androidx.collection;

import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFloatSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatSet.kt\nandroidx/collection/FloatSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,853:1\n1#2:854\n*E\n"})
/* loaded from: classes.dex */
public final class FloatSetKt {

    /* renamed from: a, reason: collision with root package name */
    public static final float[] f441a;

    static {
        int i;
        long[] jArr = ScatterMapKt.f468a;
        int c2 = ScatterMapKt.c(0);
        if (c2 > 0) {
            i = Math.max(7, ScatterMapKt.b(c2));
        } else {
            i = 0;
        }
        if (i != 0) {
            jArr = new long[((i + 15) & (-8)) >> 3];
            ArraysKt.s(jArr);
        }
        int i2 = i >> 3;
        long j = 255 << ((i & 7) << 3);
        jArr[i2] = (jArr[i2] & (~j)) | j;
        float[] fArr = new float[i];
        f441a = new float[0];
    }
}
