package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhkl {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f8617a = 0;

    static {
        Charset.forName("UTF-8");
    }

    public static final zzhxc a(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= '!' && charAt <= '~') {
                bArr[i] = (byte) charAt;
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(charAt).length() + 33);
                sb.append("Not a printable ASCII character: ");
                sb.append(charAt);
                throw new RuntimeException(sb.toString());
            }
        }
        return zzhxc.a(bArr);
    }

    public static final zzhxc b(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= '!' && charAt <= '~') {
                bArr[i] = (byte) charAt;
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(charAt).length() + 33);
                sb.append("Not a printable ASCII character: ");
                sb.append(charAt);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return zzhxc.a(bArr);
    }

    public static boolean c(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr2[i] != bArr[i]) {
                return false;
            }
        }
        return true;
    }
}
