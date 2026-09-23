package com.google.api.client.util;

import com.google.common.io.BaseEncoding;

@Deprecated
/* loaded from: classes3.dex */
public class Base64 {
    private static final BaseEncoding BASE64_DECODER = BaseEncoding.f12463a.j();
    private static final BaseEncoding BASE64URL_DECODER = BaseEncoding.b.j();

    private Base64() {
    }

    public static byte[] decodeBase64(byte[] bArr) {
        return decodeBase64(StringUtils.newStringUtf8(bArr));
    }

    public static byte[] encodeBase64(byte[] bArr) {
        return StringUtils.getBytesUtf8(encodeBase64String(bArr));
    }

    public static String encodeBase64String(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        BaseEncoding baseEncoding = BaseEncoding.f12463a;
        baseEncoding.getClass();
        return baseEncoding.c(bArr, bArr.length);
    }

    public static byte[] encodeBase64URLSafe(byte[] bArr) {
        return StringUtils.getBytesUtf8(encodeBase64URLSafeString(bArr));
    }

    public static String encodeBase64URLSafeString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        BaseEncoding h = BaseEncoding.b.h();
        h.getClass();
        return h.c(bArr, bArr.length);
    }

    public static byte[] decodeBase64(String str) {
        if (str == null) {
            return null;
        }
        try {
            return BASE64_DECODER.a(str);
        } catch (IllegalArgumentException e) {
            if (e.getCause() instanceof BaseEncoding.DecodingException) {
                return BASE64URL_DECODER.a(str.trim());
            }
            throw e;
        }
    }
}
