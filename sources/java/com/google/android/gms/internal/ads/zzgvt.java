package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgvt {

    /* renamed from: a, reason: collision with root package name */
    public final String f8266a;
    public final char[] b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8267c;
    public final int d;
    public final int e;
    public final int f;
    public final byte[] g;
    public final boolean[] h;
    public final boolean i;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzgvt(java.lang.String r9, char[] r10) {
        /*
            r8 = this;
            r0 = 128(0x80, float:1.8E-43)
            byte[] r1 = new byte[r0]
            r2 = -1
            java.util.Arrays.fill(r1, r2)
            r3 = 0
            r4 = r3
        La:
            int r5 = r10.length
            if (r4 >= r5) goto L4e
            char r5 = r10[r4]
            r6 = 1
            if (r5 >= r0) goto L14
            r7 = r6
            goto L15
        L14:
            r7 = r3
        L15:
            if (r7 == 0) goto L3a
            r7 = r1[r5]
            if (r7 != r2) goto L1d
            r7 = r6
            goto L1e
        L1d:
            r7 = r3
        L1e:
            if (r7 == 0) goto L26
            byte r6 = (byte) r4
            r1[r5] = r6
            int r4 = r4 + 1
            goto La
        L26:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.Character r10 = java.lang.Character.valueOf(r5)
            java.lang.Object[] r0 = new java.lang.Object[r6]
            r0[r3] = r10
            java.lang.String r10 = "Duplicate character: %s"
            java.lang.String r10 = com.google.android.gms.internal.ads.zzgqr.b(r10, r0)
            r9.<init>(r10)
            throw r9
        L3a:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.Character r10 = java.lang.Character.valueOf(r5)
            java.lang.Object[] r0 = new java.lang.Object[r6]
            r0[r3] = r10
            java.lang.String r10 = "Non-ASCII character: %s"
            java.lang.String r10 = com.google.android.gms.internal.ads.zzgqr.b(r10, r0)
            r9.<init>(r10)
            throw r9
        L4e:
            r8.<init>(r9, r10, r1, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgvt.<init>(java.lang.String, char[]):void");
    }

    public final int a(char c2) {
        if (c2 <= 127) {
            byte b = this.g[c2];
            if (b == -1) {
                if (c2 > ' ' && c2 != 127) {
                    StringBuilder sb = new StringBuilder(String.valueOf(c2).length() + 24);
                    sb.append("Unrecognized character: ");
                    sb.append(c2);
                    throw new IOException(sb.toString());
                }
                throw new IOException("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c2))));
            }
            return b;
        }
        throw new IOException("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c2))));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgvt) {
            zzgvt zzgvtVar = (zzgvt) obj;
            if (this.i == zzgvtVar.i && Arrays.equals(this.b, zzgvtVar.b)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = Arrays.hashCode(this.b);
        if (true != this.i) {
            i = 1237;
        } else {
            i = 1231;
        }
        return hashCode + i;
    }

    public final String toString() {
        return this.f8266a;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0019. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067 A[LOOP:0: B:13:0x0063->B:15:0x0067, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzgvt(java.lang.String r5, char[] r6, byte[] r7, boolean r8) {
        /*
            r4 = this;
            r4.<init>()
            r4.f8266a = r5
            r6.getClass()
            r4.b = r6
            int r5 = r6.length     // Catch: java.lang.ArithmeticException -> L7b
            java.math.RoundingMode r0 = java.math.RoundingMode.UNNECESSARY     // Catch: java.lang.ArithmeticException -> L7b
            if (r5 <= 0) goto L7d
            int[] r1 = com.google.android.gms.internal.ads.zzgwp.f8278a     // Catch: java.lang.ArithmeticException -> L7b
            int r0 = r0.ordinal()     // Catch: java.lang.ArithmeticException -> L7b
            r0 = r1[r0]     // Catch: java.lang.ArithmeticException -> L7b
            r1 = 0
            r2 = 1
            switch(r0) {
                case 1: goto L3a;
                case 2: goto L45;
                case 3: goto L45;
                case 4: goto L31;
                case 5: goto L31;
                case 6: goto L22;
                case 7: goto L22;
                case 8: goto L22;
                default: goto L1c;
            }     // Catch: java.lang.ArithmeticException -> L7b
        L1c:
            java.lang.AssertionError r5 = new java.lang.AssertionError     // Catch: java.lang.ArithmeticException -> L7b
            r5.<init>()     // Catch: java.lang.ArithmeticException -> L7b
            throw r5     // Catch: java.lang.ArithmeticException -> L7b
        L22:
            int r0 = java.lang.Integer.numberOfLeadingZeros(r5)     // Catch: java.lang.ArithmeticException -> L7b
            r3 = -1257966797(0xffffffffb504f333, float:-4.9527733E-7)
            int r3 = r3 >>> r0
            int r0 = 31 - r0
            int r3 = r3 - r5
            int r3 = r3 >>> 31
            int r0 = r0 + r3
            goto L4b
        L31:
            int r0 = r5 + (-1)
            int r0 = java.lang.Integer.numberOfLeadingZeros(r0)     // Catch: java.lang.ArithmeticException -> L7b
            int r0 = 32 - r0
            goto L4b
        L3a:
            int r0 = r5 + (-1)
            r0 = r0 & r5
            if (r0 != 0) goto L41
            r0 = r2
            goto L42
        L41:
            r0 = r1
        L42:
            com.google.android.gms.internal.ads.zzgwt.b(r0)     // Catch: java.lang.ArithmeticException -> L7b
        L45:
            int r0 = java.lang.Integer.numberOfLeadingZeros(r5)     // Catch: java.lang.ArithmeticException -> L7b
            int r0 = 31 - r0
        L4b:
            r4.d = r0     // Catch: java.lang.ArithmeticException -> L7b
            int r6 = java.lang.Integer.numberOfTrailingZeros(r0)
            int r3 = 3 - r6
            int r3 = r2 << r3
            r4.e = r3
            int r6 = r0 >> r6
            r4.f = r6
            int r5 = r5 + (-1)
            r4.f8267c = r5
            r4.g = r7
            boolean[] r5 = new boolean[r3]
        L63:
            int r6 = r4.f
            if (r1 >= r6) goto L76
            int r6 = r1 * 8
            int r7 = r4.d
            java.math.RoundingMode r0 = java.math.RoundingMode.CEILING
            int r6 = com.google.android.gms.internal.ads.zzgwq.a(r6, r7)
            r5[r6] = r2
            int r1 = r1 + 1
            goto L63
        L76:
            r4.h = r5
            r4.i = r8
            return
        L7b:
            r5 = move-exception
            goto L85
        L7d:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException     // Catch: java.lang.ArithmeticException -> L7b
            java.lang.String r7 = "x (0) must be > 0"
            r5.<init>(r7)     // Catch: java.lang.ArithmeticException -> L7b
            throw r5     // Catch: java.lang.ArithmeticException -> L7b
        L85:
            int r6 = r6.length
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = java.lang.String.valueOf(r6)
            int r8 = r8.length()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r8 = r8 + 24
            r0.<init>(r8)
            java.lang.String r8 = "Illegal alphabet length "
            java.lang.String r6 = androidx.work.impl.workers.a.r(r6, r8, r0)
            r7.<init>(r6, r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgvt.<init>(java.lang.String, char[], byte[], boolean):void");
    }
}
