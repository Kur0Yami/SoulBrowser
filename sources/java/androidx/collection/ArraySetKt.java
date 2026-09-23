package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import java.util.ConcurrentModificationException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ArraySetKt {
    public static final void a(ArraySet arraySet, int i) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int[] iArr = new int[i];
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        arraySet.f436c = iArr;
        Object[] objArr = new Object[i];
        Intrinsics.checkNotNullParameter(objArr, "<set-?>");
        arraySet.f = objArr;
    }

    public static final int b(ArraySet arraySet, Object obj, int i) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int i2 = arraySet.g;
        if (i2 == 0) {
            return -1;
        }
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        try {
            int a2 = ContainerHelpersKt.a(arraySet.f436c, arraySet.g, i);
            if (a2 < 0 || Intrinsics.areEqual(obj, arraySet.f[a2])) {
                return a2;
            }
            int i3 = a2 + 1;
            while (i3 < i2 && arraySet.f436c[i3] == i) {
                if (Intrinsics.areEqual(obj, arraySet.f[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a2 - 1; i4 >= 0 && arraySet.f436c[i4] == i; i4--) {
                if (Intrinsics.areEqual(obj, arraySet.f[i4])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }
}
