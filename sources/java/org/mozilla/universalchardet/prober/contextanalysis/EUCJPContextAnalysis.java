package org.mozilla.universalchardet.prober.contextanalysis;

import kotlin.UByte;

/* loaded from: classes4.dex */
public class EUCJPContextAnalysis extends JapaneseContextAnalysis {
    @Override // org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis
    public final int a(byte[] bArr, int i) {
        int i2;
        if ((bArr[i] & UByte.MAX_VALUE) == 164 && (i2 = bArr[i + 1] & UByte.MAX_VALUE) >= 161 && i2 <= 243) {
            return i2 - 161;
        }
        return -1;
    }
}
