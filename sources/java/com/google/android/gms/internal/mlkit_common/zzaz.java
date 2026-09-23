package com.google.android.gms.internal.mlkit_common;

import java.io.OutputStream;

/* loaded from: classes3.dex */
final class zzaz extends OutputStream {

    /* renamed from: c, reason: collision with root package name */
    public long f10660c;

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.f10660c++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f10660c += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int length;
        int i3;
        if (i >= 0 && i <= (length = bArr.length) && i2 >= 0 && (i3 = i + i2) <= length && i3 >= 0) {
            this.f10660c += i2;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
