package org.apache.commons.compress.archivers.zip;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class PKWareExtraHeader implements ZipExtraField {

    /* renamed from: c, reason: collision with root package name */
    public byte[] f22286c;
    public byte[] f;

    /* loaded from: classes4.dex */
    public enum EncryptionAlgorithm {
        /* JADX INFO: Fake field, exist only in values array */
        DES(26113),
        /* JADX INFO: Fake field, exist only in values array */
        RC2pre52(26114),
        /* JADX INFO: Fake field, exist only in values array */
        TripleDES168(26115),
        /* JADX INFO: Fake field, exist only in values array */
        TripleDES192(26121),
        /* JADX INFO: Fake field, exist only in values array */
        AES128(26126),
        /* JADX INFO: Fake field, exist only in values array */
        AES192(26127),
        /* JADX INFO: Fake field, exist only in values array */
        AES256(26128),
        /* JADX INFO: Fake field, exist only in values array */
        RC2(26370),
        /* JADX INFO: Fake field, exist only in values array */
        RC4(26625),
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN(65535);

        public static final Map f;

        /* renamed from: c, reason: collision with root package name */
        public final int f22287c;

        static {
            HashMap hashMap = new HashMap();
            for (EncryptionAlgorithm encryptionAlgorithm : values()) {
                hashMap.put(Integer.valueOf(encryptionAlgorithm.f22287c), encryptionAlgorithm);
            }
            f = DesugarCollections.unmodifiableMap(hashMap);
        }

        EncryptionAlgorithm(int i) {
            this.f22287c = i;
        }
    }

    /* loaded from: classes4.dex */
    public enum HashAlgorithm {
        /* JADX INFO: Fake field, exist only in values array */
        NONE(0),
        /* JADX INFO: Fake field, exist only in values array */
        CRC32(1),
        /* JADX INFO: Fake field, exist only in values array */
        MD5(32771),
        /* JADX INFO: Fake field, exist only in values array */
        SHA1(32772),
        /* JADX INFO: Fake field, exist only in values array */
        RIPEND160(32775),
        /* JADX INFO: Fake field, exist only in values array */
        SHA256(32780),
        /* JADX INFO: Fake field, exist only in values array */
        SHA384(32781),
        /* JADX INFO: Fake field, exist only in values array */
        SHA512(32782);

        public static final Map f;

        /* renamed from: c, reason: collision with root package name */
        public final int f22288c;

        static {
            HashMap hashMap = new HashMap();
            for (HashAlgorithm hashAlgorithm : values()) {
                hashMap.put(Integer.valueOf(hashAlgorithm.f22288c), hashAlgorithm);
            }
            f = DesugarCollections.unmodifiableMap(hashMap);
        }

        HashAlgorithm(int i) {
            this.f22288c = i;
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return null;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        int i;
        byte[] bArr = this.f22286c;
        if (bArr != null) {
            i = bArr.length;
        } else {
            i = 0;
        }
        return new ZipShort(i);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void c(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f22286c = ZipUtil.a(bArr2);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        return ZipUtil.a(this.f22286c);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        byte[] bArr = this.f;
        if (bArr != null) {
            return ZipUtil.a(bArr);
        }
        return ZipUtil.a(this.f22286c);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        byte[] bArr = this.f;
        if (bArr != null) {
            return new ZipShort(bArr.length);
        }
        return b();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void g(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f = ZipUtil.a(bArr2);
        if (this.f22286c == null) {
            this.f22286c = ZipUtil.a(bArr2);
        }
    }
}
