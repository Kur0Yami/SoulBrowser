package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;

/* loaded from: classes.dex */
final class zzhys extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public int f8887c;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return Math.min(super.available(), this.f8887c);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (this.f8887c <= 0) {
            return -1;
        }
        int read = super.read();
        if (read >= 0) {
            this.f8887c--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        int skip = (int) super.skip(Math.min(j, this.f8887c));
        if (skip >= 0) {
            this.f8887c -= skip;
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3 = this.f8887c;
        if (i3 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i, Math.min(i2, i3));
        if (read >= 0) {
            this.f8887c -= read;
        }
        return read;
    }
}
