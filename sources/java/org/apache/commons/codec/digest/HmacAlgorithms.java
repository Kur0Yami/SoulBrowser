package org.apache.commons.codec.digest;

/* loaded from: classes4.dex */
public enum HmacAlgorithms {
    /* JADX INFO: Fake field, exist only in values array */
    HMAC_MD5("HmacMD5"),
    /* JADX INFO: Fake field, exist only in values array */
    HMAC_SHA_1("HmacSHA1"),
    /* JADX INFO: Fake field, exist only in values array */
    HMAC_SHA_224("HmacSHA224"),
    /* JADX INFO: Fake field, exist only in values array */
    HMAC_SHA_256("HmacSHA256"),
    /* JADX INFO: Fake field, exist only in values array */
    HMAC_SHA_384("HmacSHA384"),
    /* JADX INFO: Fake field, exist only in values array */
    HMAC_SHA_512("HmacSHA512");


    /* renamed from: c, reason: collision with root package name */
    public final String f22240c;

    HmacAlgorithms(String str) {
        this.f22240c = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f22240c;
    }
}
