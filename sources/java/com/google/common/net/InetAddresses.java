package com.google.common.net;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.CharMatcher;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class InetAddresses {

    /* renamed from: a, reason: collision with root package name */
    public static final CharMatcher f12493a = CharMatcher.j('.');
    public static final CharMatcher b = CharMatcher.j(':');

    /* loaded from: classes3.dex */
    public static final class Scope {

        /* renamed from: a, reason: collision with root package name */
        public String f12494a;
    }

    /* loaded from: classes3.dex */
    public static final class TeredoInfo {
    }

    static {
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0089, code lost:
    
        if (r3 == null) goto L100;
     */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.net.InetAddresses$Scope, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.net.InetAddress a(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.net.InetAddresses.a(java.lang.String):java.net.InetAddress");
    }

    public static byte b(int i, int i2, String str) {
        int i3 = i2 - i;
        if (i3 > 0 && i3 <= 3) {
            if (i3 > 1 && str.charAt(i) == '0') {
                throw new NumberFormatException();
            }
            int i4 = 0;
            while (i < i2) {
                int i5 = i4 * 10;
                int digit = Character.digit(str.charAt(i), 10);
                if (digit >= 0) {
                    i4 = i5 + digit;
                    i++;
                } else {
                    throw new NumberFormatException();
                }
            }
            if (i4 <= 255) {
                return (byte) i4;
            }
            throw new NumberFormatException();
        }
        throw new NumberFormatException();
    }

    public static byte[] c(String str) {
        if (f12493a.f(str) + 1 == 4) {
            byte[] bArr = new byte[4];
            int i = 0;
            for (int i2 = 0; i2 < 4; i2++) {
                int indexOf = str.indexOf(46, i);
                if (indexOf == -1) {
                    indexOf = str.length();
                }
                try {
                    bArr[i2] = b(i, indexOf, str);
                    i = indexOf + 1;
                } catch (NumberFormatException unused) {
                    return null;
                }
            }
            return bArr;
        }
        return null;
    }
}
