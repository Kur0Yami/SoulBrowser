package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhgf extends zzhgc {
    @Override // com.google.android.gms.internal.ads.zzhgc
    public final int[] a(int i, int[] iArr) {
        int length = iArr.length;
        if (length == 6) {
            int[] iArr2 = new int[16];
            int[] d = zzhga.d(this.f8518a, iArr);
            int[] iArr3 = zzhga.f8517a;
            int length2 = iArr3.length;
            System.arraycopy(iArr3, 0, iArr2, 0, length2);
            System.arraycopy(d, 0, iArr2, length2, 8);
            iArr2[12] = i;
            iArr2[13] = 0;
            iArr2[14] = iArr[4];
            iArr2[15] = iArr[5];
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
    }

    @Override // com.google.android.gms.internal.ads.zzhgc
    public final int b() {
        return 24;
    }
}
