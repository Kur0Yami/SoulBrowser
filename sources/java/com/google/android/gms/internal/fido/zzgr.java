package com.google.android.gms.internal.fido;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
final class zzgr extends zzgu {
    public final int h;
    public final int i;

    public zzgr(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgx.r(i, i + i2, bArr.length);
        this.h = i;
        this.i = i2;
    }

    @Override // com.google.android.gms.internal.fido.zzgu, com.google.android.gms.internal.fido.zzgx
    public final byte a(int i) {
        int i2 = this.i;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(a.e(i, "Index < 0: "));
            }
            throw new ArrayIndexOutOfBoundsException(androidx.work.impl.workers.a.s("Index > length: ", i, i2, ", "));
        }
        return this.g[this.h + i];
    }

    @Override // com.google.android.gms.internal.fido.zzgu, com.google.android.gms.internal.fido.zzgx
    public final byte c(int i) {
        return this.g[this.h + i];
    }

    @Override // com.google.android.gms.internal.fido.zzgu, com.google.android.gms.internal.fido.zzgx
    public final int g() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.fido.zzgu, com.google.android.gms.internal.fido.zzgx
    public final void i(byte[] bArr, int i) {
        System.arraycopy(this.g, this.h, bArr, 0, i);
    }

    @Override // com.google.android.gms.internal.fido.zzgu
    public final int u() {
        return this.h;
    }
}
