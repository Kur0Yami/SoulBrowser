package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;
import java.util.Date;

/* loaded from: classes4.dex */
public class X5455_ExtendedTimestamp implements ZipExtraField, Cloneable, Serializable {
    public static final ZipShort l = new ZipShort(21589);

    /* renamed from: c, reason: collision with root package name */
    public byte f22296c;
    public boolean f;
    public boolean g;
    public boolean h;
    public ZipLong i;
    public ZipLong j;
    public ZipLong k;

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return l;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        int i;
        int i2;
        int i3 = 0;
        if (this.f) {
            i = 4;
        } else {
            i = 0;
        }
        int i4 = i + 1;
        if (this.g && this.j != null) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        int i5 = i4 + i2;
        if (this.h && this.k != null) {
            i3 = 4;
        }
        return new ZipShort(i5 + i3);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i, int i2) {
        int i3;
        h((byte) 0);
        this.i = null;
        this.j = null;
        this.k = null;
        int i4 = i2 + i;
        int i5 = i + 1;
        h(bArr[i]);
        if (this.f) {
            this.i = new ZipLong(bArr, i5);
            i5 = i + 5;
        }
        if (this.g && (i3 = i5 + 4) <= i4) {
            this.j = new ZipLong(bArr, i5);
            i5 = i3;
        }
        if (this.h && i5 + 4 <= i4) {
            this.k = new ZipLong(bArr, i5);
        }
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        ZipLong zipLong;
        ZipLong zipLong2;
        byte[] bArr = new byte[b().f22313c];
        bArr[0] = 0;
        int i = 1;
        if (this.f) {
            bArr[0] = (byte) 1;
            System.arraycopy(ZipLong.a(this.i.f22311c), 0, bArr, 1, 4);
            i = 5;
        }
        if (this.g && (zipLong2 = this.j) != null) {
            bArr[0] = (byte) (bArr[0] | 2);
            System.arraycopy(ZipLong.a(zipLong2.f22311c), 0, bArr, i, 4);
            i += 4;
        }
        if (this.h && (zipLong = this.k) != null) {
            bArr[0] = (byte) (bArr[0] | 4);
            System.arraycopy(ZipLong.a(zipLong.f22311c), 0, bArr, i, 4);
        }
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        int i = f().f22313c;
        byte[] bArr = new byte[i];
        System.arraycopy(d(), 0, bArr, 0, i);
        return bArr;
    }

    public final boolean equals(Object obj) {
        ZipLong zipLong;
        ZipLong zipLong2;
        ZipLong zipLong3;
        ZipLong zipLong4;
        if (obj instanceof X5455_ExtendedTimestamp) {
            X5455_ExtendedTimestamp x5455_ExtendedTimestamp = (X5455_ExtendedTimestamp) obj;
            if ((this.f22296c & 7) == (x5455_ExtendedTimestamp.f22296c & 7) && (((zipLong = this.i) == (zipLong2 = x5455_ExtendedTimestamp.i) || (zipLong != null && zipLong.equals(zipLong2))) && ((zipLong3 = this.j) == (zipLong4 = x5455_ExtendedTimestamp.j) || (zipLong3 != null && zipLong3.equals(zipLong4))))) {
                ZipLong zipLong5 = this.k;
                ZipLong zipLong6 = x5455_ExtendedTimestamp.k;
                if (zipLong5 != zipLong6) {
                    if (zipLong5 != null && zipLong5.equals(zipLong6)) {
                        return true;
                    }
                } else {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        int i;
        if (this.f) {
            i = 4;
        } else {
            i = 0;
        }
        return new ZipShort(i + 1);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i, int i2) {
        h((byte) 0);
        this.i = null;
        this.j = null;
        this.k = null;
        c(bArr, i, i2);
    }

    public final void h(byte b) {
        boolean z;
        boolean z2;
        this.f22296c = b;
        boolean z3 = false;
        if ((b & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        this.f = z;
        if ((b & 2) == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.g = z2;
        if ((b & 4) == 4) {
            z3 = true;
        }
        this.h = z3;
    }

    public final int hashCode() {
        int i = (this.f22296c & 7) * (-123);
        ZipLong zipLong = this.i;
        if (zipLong != null) {
            i ^= (int) zipLong.f22311c;
        }
        ZipLong zipLong2 = this.j;
        if (zipLong2 != null) {
            i ^= Integer.rotateLeft((int) zipLong2.f22311c, 11);
        }
        ZipLong zipLong3 = this.k;
        if (zipLong3 != null) {
            return i ^ Integer.rotateLeft((int) zipLong3.f22311c, 22);
        }
        return i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("0x5455 Zip Extra Field: Flags=");
        sb.append(Integer.toBinaryString(ZipUtil.d(this.f22296c)));
        sb.append(" ");
        if (this.f && this.i != null) {
            Date date = new Date(this.i.f22311c * 1000);
            sb.append(" Modify:[");
            sb.append(date);
            sb.append("] ");
        }
        if (this.g && this.j != null) {
            Date date2 = new Date(this.j.f22311c * 1000);
            sb.append(" Access:[");
            sb.append(date2);
            sb.append("] ");
        }
        if (this.h && this.k != null) {
            Date date3 = new Date(this.k.f22311c * 1000);
            sb.append(" Create:[");
            sb.append(date3);
            sb.append("] ");
        }
        return sb.toString();
    }
}
