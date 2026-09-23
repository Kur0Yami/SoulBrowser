package org.apache.commons.compress.archivers.zip;

/* loaded from: classes4.dex */
public final class UnparseableExtraFieldData implements ZipExtraField {
    public static final ZipShort g = new ZipShort(44225);

    /* renamed from: c, reason: collision with root package name */
    public byte[] f22291c;
    public byte[] f;

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return g;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        int length;
        byte[] bArr = this.f22291c;
        if (bArr == null) {
            length = 0;
        } else {
            length = bArr.length;
        }
        return new ZipShort(length);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f22291c = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        return ZipUtil.a(this.f22291c);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        byte[] bArr = this.f;
        if (bArr == null) {
            return ZipUtil.a(this.f22291c);
        }
        return ZipUtil.a(bArr);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        byte[] bArr = this.f;
        if (bArr == null) {
            return b();
        }
        return new ZipShort(bArr.length);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        if (this.f22291c == null) {
            c(bArr, i, i2);
        }
    }
}
