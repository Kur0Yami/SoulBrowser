package org.apache.commons.compress.archivers.zip;

import java.util.Date;

/* loaded from: classes4.dex */
public class X000A_NTFS implements ZipExtraField {
    public static final ZipShort h = new ZipShort(10);
    public static final ZipShort i = new ZipShort(1);
    public static final ZipShort j = new ZipShort(24);

    /* renamed from: c, reason: collision with root package name */
    public ZipEightByteInteger f22295c;
    public ZipEightByteInteger f;
    public ZipEightByteInteger g;

    public static Date h(ZipEightByteInteger zipEightByteInteger) {
        if (zipEightByteInteger != null && !ZipEightByteInteger.f.equals(zipEightByteInteger)) {
            return new Date((zipEightByteInteger.f22302c.longValue() - 116444736000000000L) / 10000);
        }
        return null;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return h;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        return new ZipShort(32);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i2, int i3) {
        int i4 = i3 + i2;
        int i5 = i2 + 4;
        while (i5 + 4 <= i4) {
            int i6 = i5 + 2;
            if (new ZipShort(bArr, i5).equals(i)) {
                if (i4 - i6 >= 26) {
                    if (j.equals(new ZipShort(bArr, i6))) {
                        this.f22295c = new ZipEightByteInteger(bArr, i5 + 4);
                        this.f = new ZipEightByteInteger(bArr, i5 + 12);
                        this.g = new ZipEightByteInteger(bArr, i5 + 20);
                        return;
                    }
                    return;
                }
                return;
            }
            i5 = new ZipShort(bArr, i6).f22313c + 2 + i6;
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        byte[] bArr = new byte[32];
        System.arraycopy(i.a(), 0, bArr, 4, 2);
        System.arraycopy(j.a(), 0, bArr, 6, 2);
        System.arraycopy(ZipEightByteInteger.a(this.f22295c.f22302c), 0, bArr, 8, 8);
        System.arraycopy(ZipEightByteInteger.a(this.f.f22302c), 0, bArr, 16, 8);
        System.arraycopy(ZipEightByteInteger.a(this.g.f22302c), 0, bArr, 24, 8);
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        return d();
    }

    public final boolean equals(Object obj) {
        ZipEightByteInteger zipEightByteInteger;
        ZipEightByteInteger zipEightByteInteger2;
        if (!(obj instanceof X000A_NTFS)) {
            return false;
        }
        X000A_NTFS x000a_ntfs = (X000A_NTFS) obj;
        ZipEightByteInteger zipEightByteInteger3 = this.f22295c;
        ZipEightByteInteger zipEightByteInteger4 = x000a_ntfs.f22295c;
        if ((zipEightByteInteger3 == zipEightByteInteger4 || (zipEightByteInteger3 != null && zipEightByteInteger3.equals(zipEightByteInteger4))) && ((zipEightByteInteger = this.f) == (zipEightByteInteger2 = x000a_ntfs.f) || (zipEightByteInteger != null && zipEightByteInteger.equals(zipEightByteInteger2)))) {
            ZipEightByteInteger zipEightByteInteger5 = this.g;
            ZipEightByteInteger zipEightByteInteger6 = x000a_ntfs.g;
            if (zipEightByteInteger5 != zipEightByteInteger6) {
                if (zipEightByteInteger5 != null && zipEightByteInteger5.equals(zipEightByteInteger6)) {
                    return true;
                }
            } else {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        return b();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i2, int i3) {
        ZipEightByteInteger zipEightByteInteger = ZipEightByteInteger.f;
        this.f22295c = zipEightByteInteger;
        this.f = zipEightByteInteger;
        this.g = zipEightByteInteger;
        c(bArr, i2, i3);
    }

    public final int hashCode() {
        ZipEightByteInteger zipEightByteInteger = this.f22295c;
        int i2 = -123;
        if (zipEightByteInteger != null) {
            i2 = (-123) ^ zipEightByteInteger.f22302c.hashCode();
        }
        ZipEightByteInteger zipEightByteInteger2 = this.f;
        if (zipEightByteInteger2 != null) {
            i2 ^= Integer.rotateLeft(zipEightByteInteger2.f22302c.hashCode(), 11);
        }
        ZipEightByteInteger zipEightByteInteger3 = this.g;
        if (zipEightByteInteger3 != null) {
            return Integer.rotateLeft(zipEightByteInteger3.f22302c.hashCode(), 22) ^ i2;
        }
        return i2;
    }

    public final String toString() {
        return "0x000A Zip Extra Field: Modify:[" + h(this.f22295c) + "]  Access:[" + h(this.f) + "]  Create:[" + h(this.g) + "] ";
    }
}
