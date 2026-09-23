package com.google.firebase.encoders.proto;

import java.io.OutputStream;

/* loaded from: classes3.dex */
final class LengthCountingOutputStream extends OutputStream {

    /* renamed from: c, reason: collision with root package name */
    public long f12648c;

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.f12648c++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f12648c += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i >= 0 && i <= bArr.length && i2 >= 0 && (i3 = i + i2) <= bArr.length && i3 >= 0) {
            this.f12648c += i2;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
