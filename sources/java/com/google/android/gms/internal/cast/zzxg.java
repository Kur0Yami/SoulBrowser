package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
final class zzxg extends zzxj {
    public final int h;

    public zzxg(byte[] bArr) {
        super(bArr);
        zzxk.d(bArr.length);
        this.h = 47;
    }

    @Override // com.google.android.gms.internal.cast.zzxj, com.google.android.gms.internal.cast.zzxk
    public final byte a(int i) {
        int i2 = this.h;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(androidx.work.impl.workers.a.r(i, "Index < 0: ", new StringBuilder(String.valueOf(i).length() + 11)));
            }
            throw new ArrayIndexOutOfBoundsException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 18 + String.valueOf(i2).length()), "Index > length: ", i, ", ", i2));
        }
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.cast.zzxj, com.google.android.gms.internal.cast.zzxk
    public final byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.cast.zzxj, com.google.android.gms.internal.cast.zzxk
    public final int g() {
        return this.h;
    }
}
