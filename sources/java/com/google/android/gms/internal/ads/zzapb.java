package com.google.android.gms.internal.ads;

import kotlin.UByte;

/* loaded from: classes.dex */
final class zzapb extends zzaea {
    public static /* synthetic */ int d(byte[] bArr, int i) {
        return (bArr[i + 3] & UByte.MAX_VALUE) | ((bArr[i] & UByte.MAX_VALUE) << 24) | ((bArr[i + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i + 2] & UByte.MAX_VALUE) << 8);
    }
}
