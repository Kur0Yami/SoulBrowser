package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzase extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public final long f4386c;
    public long f;

    public zzase(BufferedInputStream bufferedInputStream, long j) {
        super(bufferedInputStream);
        this.f4386c = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.f++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f += read;
        }
        return read;
    }
}
