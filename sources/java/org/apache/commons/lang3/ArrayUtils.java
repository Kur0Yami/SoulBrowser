package org.apache.commons.lang3;

import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.function.IntFunction;

/* loaded from: classes4.dex */
public class ArrayUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[] f22336a = new Object[0];
    public static final String[] b = new String[0];

    /* renamed from: c, reason: collision with root package name */
    public static final Type[] f22337c = new Type[0];

    /* JADX WARN: Removed duplicated region for block: B:12:0x0028 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.Object[] r4, java.lang.Object r5) {
        /*
            r0 = 0
            r1 = -1
            if (r4 != 0) goto L5
            goto L25
        L5:
            int r2 = java.lang.Math.max(r0, r0)
            if (r5 != 0) goto L16
        Lb:
            int r5 = r4.length
            if (r2 >= r5) goto L25
            r5 = r4[r2]
            if (r5 != 0) goto L13
            goto L26
        L13:
            int r2 = r2 + 1
            goto Lb
        L16:
            int r3 = r4.length
            if (r2 >= r3) goto L25
            r3 = r4[r2]
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L22
            goto L26
        L22:
            int r2 = r2 + 1
            goto L16
        L25:
            r2 = r1
        L26:
            if (r2 == r1) goto L2a
            r4 = 1
            return r4
        L2a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.ArrayUtils.a(java.lang.Object[], java.lang.Object):boolean");
    }

    public static boolean b(Object obj) {
        int i;
        if (obj != null) {
            i = Array.getLength(obj);
        } else {
            i = 0;
        }
        if (i != 0) {
            return false;
        }
        return true;
    }

    public static void c(Object[] objArr, IntFunction intFunction) {
        Arrays.setAll(objArr, intFunction);
    }
}
