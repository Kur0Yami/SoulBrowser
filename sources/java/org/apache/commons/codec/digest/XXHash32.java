package org.apache.commons.codec.digest;

import java.util.zip.Checksum;

/* loaded from: classes4.dex */
public class XXHash32 implements Checksum {

    /* renamed from: a, reason: collision with root package name */
    public int f22243a;

    @Override // java.util.zip.Checksum
    public final long getValue() {
        throw null;
    }

    @Override // java.util.zip.Checksum
    public final void reset() {
        throw null;
    }

    @Override // java.util.zip.Checksum
    public final void update(int i) {
        throw null;
    }

    @Override // java.util.zip.Checksum
    public final void update(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        int i3 = i + i2;
        int i4 = this.f22243a;
        if ((i4 + i2) - 16 < 0) {
            System.arraycopy(bArr, i, null, i4, i2);
            this.f22243a += i2;
            return;
        }
        if (i4 > 0) {
            System.arraycopy(bArr, i, null, i4, 16 - i4);
            throw null;
        }
        if (i <= i3 - 16) {
            throw null;
        }
        if (i < i3) {
            int i5 = i3 - i;
            this.f22243a = i5;
            System.arraycopy(bArr, i, null, 0, i5);
            return;
        }
        this.f22243a = 0;
    }
}
