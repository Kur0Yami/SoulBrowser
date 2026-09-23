package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/ScatterSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1100:1\n1#2:1101\n*E\n"})
/* loaded from: classes.dex */
public final class ScatterSetKt {
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.collection.ScatterSet, java.lang.Object] */
    static {
        int i;
        long[] jArr;
        ?? obj = new Object();
        obj.f469a = ScatterMapKt.f468a;
        obj.b = ContainerHelpersKt.f477c;
        int c2 = ScatterMapKt.c(0);
        if (c2 > 0) {
            i = Math.max(7, ScatterMapKt.b(c2));
        } else {
            i = 0;
        }
        obj.f470c = i;
        if (i == 0) {
            jArr = ScatterMapKt.f468a;
        } else {
            jArr = new long[((i + 15) & (-8)) >> 3];
            ArraysKt___ArraysJvmKt.fill$default(jArr, -9187201950435737472L, 0, 0, 6, (Object) null);
        }
        obj.f469a = jArr;
        int i2 = i >> 3;
        long j = 255 << ((i & 7) << 3);
        jArr[i2] = (jArr[i2] & (~j)) | j;
        ScatterMapKt.a(obj.f470c);
        obj.b = new Object[i];
    }
}
