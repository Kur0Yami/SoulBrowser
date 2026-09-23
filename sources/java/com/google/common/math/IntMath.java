package com.google.common.math;

import android.support.v4.media.a;
import com.google.common.annotations.GwtCompatible;
import java.math.RoundingMode;

@GwtCompatible
/* loaded from: classes3.dex */
public final class IntMath {

    /* renamed from: com.google.common.math.IntMath$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12489a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f12489a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12489a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12489a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12489a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12489a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12489a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12489a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12489a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0043, code lost:
    
        if ((r6 & r2) != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
    
        if (r1 > 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0049, code lost:
    
        if (r5 > 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
    
        if (r5 < 0) goto L31;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001b. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(int r5, int r6, java.math.RoundingMode r7) {
        /*
            r7.getClass()
            if (r6 == 0) goto L5b
            int r0 = r5 / r6
            int r1 = r6 * r0
            int r1 = r5 - r1
            if (r1 != 0) goto Le
            goto L52
        Le:
            r5 = r5 ^ r6
            int r5 = r5 >> 31
            r2 = 1
            r5 = r5 | r2
            int[] r3 = com.google.common.math.IntMath.AnonymousClass1.f12489a
            int r4 = r7.ordinal()
            r3 = r3[r4]
            switch(r3) {
                case 1: goto L50;
                case 2: goto L52;
                case 3: goto L4c;
                case 4: goto L4e;
                case 5: goto L49;
                case 6: goto L24;
                case 7: goto L24;
                case 8: goto L24;
                default: goto L1e;
            }
        L1e:
            java.lang.AssertionError r5 = new java.lang.AssertionError
            r5.<init>()
            throw r5
        L24:
            int r1 = java.lang.Math.abs(r1)
            int r6 = java.lang.Math.abs(r6)
            int r6 = r6 - r1
            int r1 = r1 - r6
            if (r1 != 0) goto L46
            java.math.RoundingMode r6 = java.math.RoundingMode.HALF_UP
            if (r7 == r6) goto L4e
            java.math.RoundingMode r6 = java.math.RoundingMode.HALF_EVEN
            r1 = 0
            if (r7 != r6) goto L3b
            r6 = r2
            goto L3c
        L3b:
            r6 = r1
        L3c:
            r7 = r0 & 1
            if (r7 == 0) goto L41
            goto L42
        L41:
            r2 = r1
        L42:
            r6 = r6 & r2
            if (r6 == 0) goto L52
            goto L4e
        L46:
            if (r1 <= 0) goto L52
            goto L4e
        L49:
            if (r5 <= 0) goto L52
            goto L4e
        L4c:
            if (r5 >= 0) goto L52
        L4e:
            int r0 = r0 + r5
            return r0
        L50:
            if (r1 != 0) goto L53
        L52:
            return r0
        L53:
            java.lang.ArithmeticException r5 = new java.lang.ArithmeticException
            java.lang.String r6 = "mode was UNNECESSARY, but rounding was necessary"
            r5.<init>(r6)
            throw r5
        L5b:
            java.lang.ArithmeticException r5 = new java.lang.ArithmeticException
            java.lang.String r6 = "/ by zero"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.IntMath.a(int, int, java.math.RoundingMode):int");
    }

    public static int b(int i) {
        boolean z;
        RoundingMode roundingMode = RoundingMode.UNNECESSARY;
        if (i > 0) {
            boolean z2 = true;
            switch (AnonymousClass1.f12489a[roundingMode.ordinal()]) {
                case 1:
                    if (i > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (((i - 1) & i) != 0) {
                        z2 = false;
                    }
                    if (!(z & z2)) {
                        throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                    }
                    break;
                case 2:
                case 3:
                    break;
                case 4:
                case 5:
                    return 32 - Integer.numberOfLeadingZeros(i - 1);
                case 6:
                case 7:
                case 8:
                    int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
                    return (31 - numberOfLeadingZeros) + ((~(~(((-1257966797) >>> numberOfLeadingZeros) - i))) >>> 31);
                default:
                    throw new AssertionError();
            }
            return 31 - Integer.numberOfLeadingZeros(i);
        }
        throw new IllegalArgumentException(a.f(i, "x (", ") must be > 0"));
    }
}
