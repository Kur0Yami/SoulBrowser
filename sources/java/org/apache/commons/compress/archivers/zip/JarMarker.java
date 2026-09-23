package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* loaded from: classes4.dex */
public final class JarMarker implements ZipExtraField {

    /* renamed from: c, reason: collision with root package name */
    public static final ZipShort f22284c = new ZipShort(51966);
    public static final ZipShort f = new ZipShort(0);
    public static final byte[] g = new byte[0];

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return f22284c;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        return f;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
        } else {
            throw new ZipException("JarMarker doesn't expect any data");
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        return g;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        return g;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        return f;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i, int i2) {
        c(bArr, i, i2);
    }
}
