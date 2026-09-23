package org.apache.commons.compress.utils;

/* loaded from: classes4.dex */
public class ArchiveUtils {
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r6, byte[] r7, int r8, int r9) {
        /*
            java.lang.String r0 = "US-ASCII"
            byte[] r6 = r6.getBytes(r0)     // Catch: java.io.UnsupportedEncodingException -> L21
            int r0 = r6.length
            if (r0 >= r9) goto Lb
            r1 = r0
            goto Lc
        Lb:
            r1 = r9
        Lc:
            r2 = 0
            r3 = r2
        Le:
            if (r3 >= r1) goto L1c
            r4 = r6[r3]
            int r5 = r8 + r3
            r5 = r7[r5]
            if (r4 == r5) goto L19
            goto L20
        L19:
            int r3 = r3 + 1
            goto Le
        L1c:
            if (r0 != r9) goto L20
            r6 = 1
            return r6
        L20:
            return r2
        L21:
            r6 = move-exception
            java.lang.RuntimeException r7 = new java.lang.RuntimeException
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.utils.ArchiveUtils.a(java.lang.String, byte[], int, int):boolean");
    }
}
