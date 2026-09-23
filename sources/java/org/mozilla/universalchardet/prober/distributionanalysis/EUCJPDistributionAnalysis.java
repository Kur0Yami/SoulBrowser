package org.mozilla.universalchardet.prober.distributionanalysis;

import kotlin.UByte;

/* loaded from: classes4.dex */
public class EUCJPDistributionAnalysis extends JISDistributionAnalysis {
    @Override // org.mozilla.universalchardet.prober.distributionanalysis.CharDistributionAnalysis
    public final int b(byte[] bArr, int i) {
        int i2 = bArr[i] & UByte.MAX_VALUE;
        if (i2 >= 161) {
            return (((i2 - 161) * 94) + (bArr[i + 1] & UByte.MAX_VALUE)) - 161;
        }
        return -1;
    }
}
