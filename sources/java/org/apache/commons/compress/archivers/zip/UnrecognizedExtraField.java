package org.apache.commons.compress.archivers.zip;

/* loaded from: classes4.dex */
public class UnrecognizedExtraField implements ZipExtraField {

    /* renamed from: c, reason: collision with root package name */
    public ZipShort f22292c;
    public byte[] f;
    public byte[] g;

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return this.f22292c;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        int i;
        byte[] bArr = this.f;
        if (bArr != null) {
            i = bArr.length;
        } else {
            i = 0;
        }
        return new ZipShort(i);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f = ZipUtil.a(bArr2);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        return ZipUtil.a(this.f);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        byte[] bArr = this.g;
        if (bArr != null) {
            return ZipUtil.a(bArr);
        }
        return ZipUtil.a(this.f);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        byte[] bArr = this.g;
        if (bArr != null) {
            return new ZipShort(bArr.length);
        }
        return b();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.g = ZipUtil.a(bArr2);
        if (this.f == null) {
            this.f = ZipUtil.a(bArr2);
        }
    }
}
