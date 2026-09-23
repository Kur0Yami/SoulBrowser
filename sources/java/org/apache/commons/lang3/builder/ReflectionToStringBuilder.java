package org.apache.commons.lang3.builder;

import j$.util.stream.Stream;

/* loaded from: classes4.dex */
public class ReflectionToStringBuilder extends ToStringBuilder {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.Class r12) {
        /*
            r11 = this;
            boolean r0 = r12.isArray()
            java.lang.StringBuffer r1 = r11.f22368c
            org.apache.commons.lang3.builder.ToStringStyle r2 = r11.g
            java.lang.Object r3 = r11.f
            if (r0 == 0) goto L10
            r2.N(r1, r3)
            return
        L10:
            java.lang.reflect.Field[] r12 = r12.getDeclaredFields()
            com.google.android.material.color.utilities.d r0 = new com.google.android.material.color.utilities.d
            r4 = 29
            r0.<init>(r4)
            java.util.Comparator r0 = j$.util.Comparator.CC.comparing(r0)
            if (r12 == 0) goto L24
            java.util.Arrays.sort(r12, r0)
        L24:
            r0 = 1
            java.lang.reflect.AccessibleObject.setAccessible(r12, r0)
            int r4 = r12.length
            r5 = 0
            r6 = r5
        L2b:
            if (r6 >= r4) goto L91
            r7 = r12[r6]
            java.lang.String r8 = r7.getName()
            java.lang.String r9 = r7.getName()
            r10 = 36
            int r9 = r9.indexOf(r10)
            r10 = -1
            if (r9 == r10) goto L42
        L40:
            r9 = r5
            goto L72
        L42:
            int r9 = r7.getModifiers()
            boolean r9 = java.lang.reflect.Modifier.isTransient(r9)
            if (r9 == 0) goto L4d
            goto L40
        L4d:
            int r9 = r7.getModifiers()
            boolean r9 = java.lang.reflect.Modifier.isStatic(r9)
            if (r9 == 0) goto L58
            goto L40
        L58:
            r9 = 0
            boolean r10 = org.apache.commons.lang3.ArrayUtils.b(r9)
            if (r10 != 0) goto L6b
            java.lang.String r10 = r7.getName()
            int r9 = java.util.Arrays.binarySearch(r9, r10)
            if (r9 < 0) goto L40
            r9 = r0
            goto L72
        L6b:
            java.lang.Class<org.apache.commons.lang3.builder.ToStringExclude> r9 = org.apache.commons.lang3.builder.ToStringExclude.class
            boolean r9 = r7.isAnnotationPresent(r9)
            r9 = r9 ^ r0
        L72:
            if (r9 == 0) goto L8e
            java.lang.Object r9 = r7.get(r3)     // Catch: java.lang.IllegalAccessException -> L87
            java.lang.Class<org.apache.commons.lang3.builder.ToStringSummary> r10 = org.apache.commons.lang3.builder.ToStringSummary.class
            boolean r7 = r7.isAnnotationPresent(r10)     // Catch: java.lang.IllegalAccessException -> L87
            r7 = r7 ^ r0
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: java.lang.IllegalAccessException -> L87
            r2.a(r1, r8, r9, r7)     // Catch: java.lang.IllegalAccessException -> L87
            goto L8e
        L87:
            r12 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>(r12)
            throw r0
        L8e:
            int r6 = r6 + 1
            goto L2b
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.builder.ReflectionToStringBuilder.a(java.lang.Class):void");
    }

    @Override // org.apache.commons.lang3.builder.ToStringBuilder
    public final String toString() {
        Object obj = this.f;
        if (obj == null) {
            return this.g.A();
        }
        if (!Stream.CC.empty().anyMatch(new org.apache.commons.lang3.a(1))) {
            Class<?> cls = obj.getClass();
            a(cls);
            while (cls.getSuperclass() != null) {
                cls = cls.getSuperclass();
                a(cls);
            }
            return super.toString();
        }
        ToStringStyle.O(obj);
        throw new IllegalStateException("includeFieldNames and excludeFieldNames must not intersect");
    }
}
