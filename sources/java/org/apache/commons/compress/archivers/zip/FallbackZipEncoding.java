package org.apache.commons.compress.archivers.zip;

/* loaded from: classes4.dex */
class FallbackZipEncoding implements ZipEncoding {

    /* renamed from: a, reason: collision with root package name */
    public final String f22282a;

    public FallbackZipEncoding() {
        this.f22282a = null;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
    public final String a(byte[] bArr) {
        String str = this.f22282a;
        if (str == null) {
            return new String(bArr);
        }
        return new String(bArr, str);
    }

    public FallbackZipEncoding(String str) {
        this.f22282a = str;
    }
}
