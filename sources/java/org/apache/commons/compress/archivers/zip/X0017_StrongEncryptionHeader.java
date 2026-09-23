package org.apache.commons.compress.archivers.zip;

/* loaded from: classes4.dex */
public class X0017_StrongEncryptionHeader extends PKWareExtraHeader {
    public long g;
    public int h;
    public byte[] i;
    public byte[] j;

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i, int i2) {
        super.c(bArr, i, i2);
        int b = ZipShort.b(bArr, i);
        System.arraycopy(bArr, i + 4, new byte[b], 0, b);
        int i3 = i + b;
        int b2 = ZipShort.b(bArr, i3 + 14);
        int i4 = i3 + 16;
        System.arraycopy(bArr, i4, new byte[b2], 0, b2);
        this.g = ZipLong.b(bArr, i4 + b2);
        System.out.println("rcount: " + this.g);
        if (this.g == 0) {
            int b3 = ZipShort.b(bArr, i3 + 20 + b2);
            int i5 = b3 - 4;
            this.j = new byte[4];
            int i6 = i3 + 22 + b2;
            System.arraycopy(bArr, i6, new byte[i5], 0, i5);
            System.arraycopy(bArr, (i6 + b3) - 4, this.j, 0, 4);
            return;
        }
        int i7 = i3 + 22 + b2;
        this.h = ZipShort.b(bArr, i7);
        int i8 = i3 + 24 + b2;
        int b4 = ZipShort.b(bArr, i8);
        int i9 = this.h;
        this.i = new byte[b4 - i9];
        System.arraycopy(bArr, i8, new byte[i9], 0, i9);
        int i10 = this.h;
        System.arraycopy(bArr, i8 + i10, this.i, 0, b4 - i10);
        int b5 = ZipShort.b(bArr, i3 + 26 + b2 + b4);
        int i11 = b5 - 4;
        this.j = new byte[4];
        int i12 = i7 + b4;
        System.arraycopy(bArr, i12, new byte[i11], 0, i11);
        System.arraycopy(bArr, (i12 + b5) - 4, this.j, 0, 4);
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i, int i2) {
        super.g(bArr, i, i2);
        long b = ZipLong.b(bArr, i + 8);
        this.g = b;
        if (b > 0) {
            this.h = ZipShort.b(bArr, i + 14);
            for (int i3 = 0; i3 < this.g; i3++) {
                for (int i4 = 0; i4 < this.h; i4++) {
                }
            }
        }
    }
}
