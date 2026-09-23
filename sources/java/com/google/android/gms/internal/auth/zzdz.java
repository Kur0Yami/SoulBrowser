package com.google.android.gms.internal.auth;

import android.support.v4.media.a;

/* loaded from: classes.dex */
final class zzdz extends zzec {
    public final int h;

    public zzdz(byte[] bArr, int i) {
        super(bArr);
        zzef.q(0, i, bArr.length);
        this.h = i;
    }

    @Override // com.google.android.gms.internal.auth.zzec, com.google.android.gms.internal.auth.zzef
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

    @Override // com.google.android.gms.internal.auth.zzec, com.google.android.gms.internal.auth.zzef
    public final byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.auth.zzec, com.google.android.gms.internal.auth.zzef
    public final int g() {
        return this.h;
    }
}
