package org.mozilla.universalchardet.prober.contextanalysis;

import kotlin.UByte;

/* loaded from: classes4.dex */
public class SJISContextAnalysis extends JapaneseContextAnalysis {
    @Override // org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis
    public final int a(byte[] bArr, int i) {
        int i2;
        if ((bArr[i] & UByte.MAX_VALUE) == 130 && (i2 = bArr[i + 1] & UByte.MAX_VALUE) >= 159 && i2 <= 241) {
            return i2 - 159;
        }
        return -1;
    }
}
