package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzatl implements zzatk {
    @Override // com.google.android.gms.internal.ads.zzatk
    public final byte a(zzatw zzatwVar, int i) {
        return zzatwVar.b(i);
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final zzatw b(zzatw zzatwVar, int i, int i2) {
        byte[] bArr;
        int length;
        byte[] bArr2;
        if (i >= 0 && i <= i2 && i2 <= (length = (bArr = zzatwVar.f4413a).length) && i <= i2 && i2 <= length) {
            int i3 = i2 - i;
            if (i3 == 0) {
                bArr2 = new byte[0];
            } else {
                byte[] bArr3 = new byte[i3];
                System.arraycopy(bArr, i, bArr3, 0, i3);
                bArr2 = bArr3;
            }
            return new zzatw(bArr2);
        }
        throw new IndexOutOfBoundsException();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzatk] */
    @Override // com.google.android.gms.internal.ads.zzatk
    public final zzatk zzc() {
        return new Object();
    }
}
