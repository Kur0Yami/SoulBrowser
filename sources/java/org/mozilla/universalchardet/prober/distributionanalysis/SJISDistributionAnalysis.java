package org.mozilla.universalchardet.prober.distributionanalysis;

import kotlin.UByte;

/* loaded from: classes4.dex */
public class SJISDistributionAnalysis extends JISDistributionAnalysis {
    @Override // org.mozilla.universalchardet.prober.distributionanalysis.CharDistributionAnalysis
    public final int b(byte[] bArr, int i) {
        int i2;
        int i3 = bArr[i] & UByte.MAX_VALUE;
        if (i3 >= 129 && i3 <= 159) {
            i2 = i3 - 129;
        } else {
            if (i3 < 224 || i3 > 239) {
                return -1;
            }
            i2 = i3 - 193;
        }
        int i4 = i2 * 188;
        int i5 = bArr[i + 1] & UByte.MAX_VALUE;
        int i6 = (i5 - 64) + i4;
        if (i5 >= 128) {
            return i6 - 1;
        }
        return i6;
    }
}
