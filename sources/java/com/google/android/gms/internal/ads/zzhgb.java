package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhgb extends zzhgc {
    @Override // com.google.android.gms.internal.ads.zzhgc
    public final int[] a(int i, int[] iArr) {
        int length = iArr.length;
        if (length == 3) {
            int[] iArr2 = new int[16];
            int[] iArr3 = zzhga.f8517a;
            int length2 = iArr3.length;
            System.arraycopy(iArr3, 0, iArr2, 0, length2);
            System.arraycopy(this.f8518a, 0, iArr2, length2, 8);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, 3);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
    }

    @Override // com.google.android.gms.internal.ads.zzhgc
    public final int b() {
        return 12;
    }
}
