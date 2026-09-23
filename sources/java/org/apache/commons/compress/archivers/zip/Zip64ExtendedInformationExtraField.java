package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* loaded from: classes4.dex */
public class Zip64ExtendedInformationExtraField implements ZipExtraField {
    public static final ZipShort j = new ZipShort(1);
    public static final byte[] k = new byte[0];

    /* renamed from: c, reason: collision with root package name */
    public ZipEightByteInteger f22298c;
    public ZipEightByteInteger f;
    public ZipEightByteInteger g;
    public ZipLong h;
    public byte[] i;

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return j;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        int i;
        if (this.f22298c != null) {
            i = 16;
        } else {
            i = 0;
        }
        return new ZipShort(i);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i, int i2) {
        if (i2 != 0) {
            if (i2 >= 16) {
                this.f22298c = new ZipEightByteInteger(bArr, i);
                this.f = new ZipEightByteInteger(bArr, i + 8);
                int i3 = i + 16;
                int i4 = i2 - 16;
                if (i4 >= 8) {
                    this.g = new ZipEightByteInteger(bArr, i3);
                    i3 = i + 24;
                    i4 = i2 - 24;
                }
                if (i4 >= 4) {
                    this.h = new ZipLong(bArr, i3);
                    return;
                }
                return;
            }
            throw new ZipException("Zip64 extended information must contain both size values in the local file header.");
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        ZipEightByteInteger zipEightByteInteger = this.f22298c;
        if (zipEightByteInteger == null && this.f == null) {
            return k;
        }
        if (zipEightByteInteger != null && this.f != null) {
            byte[] bArr = new byte[16];
            h(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("Zip64 extended information must contain both size values in the local file header.");
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        byte[] bArr = new byte[f().f22313c];
        int h = h(bArr);
        ZipEightByteInteger zipEightByteInteger = this.g;
        if (zipEightByteInteger != null) {
            System.arraycopy(ZipEightByteInteger.a(zipEightByteInteger.f22302c), 0, bArr, h, 8);
            h += 8;
        }
        ZipLong zipLong = this.h;
        if (zipLong != null) {
            System.arraycopy(ZipLong.a(zipLong.f22311c), 0, bArr, h, 4);
        }
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        int i;
        int i2;
        int i3 = 8;
        int i4 = 0;
        if (this.f22298c != null) {
            i = 8;
        } else {
            i = 0;
        }
        if (this.f != null) {
            i2 = 8;
        } else {
            i2 = 0;
        }
        int i5 = i + i2;
        if (this.g == null) {
            i3 = 0;
        }
        int i6 = i5 + i3;
        if (this.h != null) {
            i4 = 4;
        }
        return new ZipShort(i6 + i4);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.i = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        if (i2 >= 28) {
            c(bArr, i, i2);
            return;
        }
        if (i2 == 24) {
            this.f22298c = new ZipEightByteInteger(bArr, i);
            this.f = new ZipEightByteInteger(bArr, i + 8);
            this.g = new ZipEightByteInteger(bArr, i + 16);
        } else if (i2 % 8 == 4) {
            this.h = new ZipLong(bArr, (i + i2) - 4);
        }
    }

    public final int h(byte[] bArr) {
        int i;
        ZipEightByteInteger zipEightByteInteger = this.f22298c;
        if (zipEightByteInteger != null) {
            System.arraycopy(ZipEightByteInteger.a(zipEightByteInteger.f22302c), 0, bArr, 0, 8);
            i = 8;
        } else {
            i = 0;
        }
        ZipEightByteInteger zipEightByteInteger2 = this.f;
        if (zipEightByteInteger2 != null) {
            System.arraycopy(ZipEightByteInteger.a(zipEightByteInteger2.f22302c), 0, bArr, i, 8);
            return i + 8;
        }
        return i;
    }
}
