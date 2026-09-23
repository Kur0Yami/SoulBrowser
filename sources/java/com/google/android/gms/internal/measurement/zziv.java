package com.google.android.gms.internal.measurement;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
final class zziv extends zziy {
    public final int h;

    public zziv(byte[] bArr, int i) {
        super(bArr);
        zzjb.q(i, bArr.length);
        this.h = i;
    }

    @Override // com.google.android.gms.internal.measurement.zziy, com.google.android.gms.internal.measurement.zzjb
    public final byte a(int i) {
        int i2 = this.h;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(a.e(i, "Index < 0: "));
            }
            throw new ArrayIndexOutOfBoundsException(androidx.work.impl.workers.a.s("Index > length: ", i, i2, ", "));
        }
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.measurement.zziy, com.google.android.gms.internal.measurement.zzjb
    public final byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.measurement.zziy, com.google.android.gms.internal.measurement.zzjb
    public final int g() {
        return this.h;
    }
}
