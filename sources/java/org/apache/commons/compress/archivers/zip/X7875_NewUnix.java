package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;
import java.math.BigInteger;

/* loaded from: classes4.dex */
public class X7875_NewUnix implements ZipExtraField, Cloneable, Serializable {
    public static final ZipShort h = new ZipShort(30837);
    public static final ZipShort i = new ZipShort(0);
    public static final BigInteger j = BigInteger.valueOf(1000);

    /* renamed from: c, reason: collision with root package name */
    public int f22297c;
    public BigInteger f;
    public BigInteger g;

    public static byte[] h(byte[] bArr) {
        if (bArr == null) {
            return bArr;
        }
        int length = bArr.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length && bArr[i3] == 0; i3++) {
            i2++;
        }
        int max = Math.max(1, bArr.length - i2);
        byte[] bArr2 = new byte[max];
        int length2 = max - (bArr.length - i2);
        System.arraycopy(bArr, i2, bArr2, length2, max - length2);
        return bArr2;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return h;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        return new ZipShort(h(this.f.toByteArray()).length + 3 + h(this.g.toByteArray()).length);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i2, int i3) {
        BigInteger bigInteger = j;
        this.f = bigInteger;
        this.g = bigInteger;
        int i4 = i2 + 1;
        int i5 = bArr[i2];
        if (i5 < 0) {
            i5 += 256;
        }
        this.f22297c = i5;
        int i6 = i2 + 2;
        int i7 = bArr[i4];
        if (i7 < 0) {
            i7 += 256;
        }
        byte[] bArr2 = new byte[i7];
        System.arraycopy(bArr, i6, bArr2, 0, i7);
        int i8 = i6 + i7;
        ZipUtil.c(bArr2);
        this.f = new BigInteger(1, bArr2);
        int i9 = i8 + 1;
        int i10 = bArr[i8];
        if (i10 < 0) {
            i10 += 256;
        }
        byte[] bArr3 = new byte[i10];
        System.arraycopy(bArr, i9, bArr3, 0, i10);
        ZipUtil.c(bArr3);
        this.g = new BigInteger(1, bArr3);
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        byte[] byteArray = this.f.toByteArray();
        byte[] byteArray2 = this.g.toByteArray();
        byte[] h2 = h(byteArray);
        byte[] h3 = h(byteArray2);
        byte[] bArr = new byte[h2.length + 3 + h3.length];
        ZipUtil.c(h2);
        ZipUtil.c(h3);
        bArr[0] = ZipUtil.d(this.f22297c);
        bArr[1] = ZipUtil.d(h2.length);
        System.arraycopy(h2, 0, bArr, 2, h2.length);
        int length = h2.length;
        bArr[2 + length] = ZipUtil.d(h3.length);
        System.arraycopy(h3, 0, bArr, length + 3, h3.length);
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        return new byte[0];
    }

    public final boolean equals(Object obj) {
        if (obj instanceof X7875_NewUnix) {
            X7875_NewUnix x7875_NewUnix = (X7875_NewUnix) obj;
            if (this.f22297c == x7875_NewUnix.f22297c && this.f.equals(x7875_NewUnix.f) && this.g.equals(x7875_NewUnix.g)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        return i;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i2, int i3) {
    }

    public final int hashCode() {
        return (Integer.rotateLeft(this.f.hashCode(), 16) ^ (this.f22297c * (-1234567))) ^ this.g.hashCode();
    }

    public final String toString() {
        return "0x7875 Zip Extra Field: UID=" + this.f + " GID=" + this.g;
    }
}
