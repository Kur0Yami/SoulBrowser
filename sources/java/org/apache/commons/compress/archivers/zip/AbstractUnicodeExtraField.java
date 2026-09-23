package org.apache.commons.compress.archivers.zip;

import android.support.v4.media.a;
import java.util.zip.ZipException;

/* loaded from: classes4.dex */
public abstract class AbstractUnicodeExtraField implements ZipExtraField {

    /* renamed from: c, reason: collision with root package name */
    public long f22275c;
    public byte[] f;
    public byte[] g;

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        return f();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i, int i2) {
        if (i2 >= 5) {
            byte b = bArr[i];
            if (b == 1) {
                this.f22275c = ZipLong.b(bArr, i + 1);
                int i3 = i2 - 5;
                byte[] bArr2 = new byte[i3];
                this.f = bArr2;
                System.arraycopy(bArr, i + 5, bArr2, 0, i3);
                this.g = null;
                return;
            }
            throw new ZipException(a.f(b, "Unsupported version [", "] for UniCode path extra data."));
        }
        throw new ZipException("UniCode path extra data must have at least 5 bytes.");
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        return e();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        if (this.g == null) {
            h();
        }
        byte[] bArr = this.g;
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            return bArr2;
        }
        return null;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        int i;
        if (this.g == null) {
            h();
        }
        byte[] bArr = this.g;
        if (bArr != null) {
            i = bArr.length;
        } else {
            i = 0;
        }
        return new ZipShort(i);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i, int i2) {
        c(bArr, i, i2);
    }

    public final void h() {
        byte[] bArr = new byte[this.f.length + 5];
        this.g = bArr;
        bArr[0] = 1;
        System.arraycopy(ZipLong.a(this.f22275c), 0, this.g, 1, 4);
        byte[] bArr2 = this.f;
        System.arraycopy(bArr2, 0, this.g, 5, bArr2.length);
    }
}
