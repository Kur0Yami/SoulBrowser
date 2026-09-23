package org.apache.commons.compress.archivers.zip;

/* loaded from: classes4.dex */
public class X0015_CertificateIdForFile extends PKWareExtraHeader {
    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i, int i2) {
        super.g(bArr, i, i2);
        ZipShort.b(bArr, i);
    }
}
