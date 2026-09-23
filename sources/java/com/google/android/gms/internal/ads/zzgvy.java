package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class zzgvy {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgvy f8268a = new zzgvv("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
    public static final zzgvy b = new zzgvv("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");

    /* renamed from: c, reason: collision with root package name */
    public static final zzgvy f8269c;

    static {
        new zzgvx("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new zzgvx("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        f8269c = new zzgvu(new zzgvt("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public abstract void a(StringBuilder sb, byte[] bArr, int i);

    public abstract int b(byte[] bArr, CharSequence charSequence);

    public abstract int c(int i);

    public abstract int d(int i);

    public CharSequence e(CharSequence charSequence) {
        throw null;
    }

    public abstract zzgvy f();

    public final String g(byte[] bArr, int i) {
        zzgqa.k(0, i, bArr.length);
        StringBuilder sb = new StringBuilder(c(i));
        try {
            a(sb, bArr, i);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final byte[] h(String str) {
        try {
            CharSequence e = e(str);
            int d = d(e.length());
            byte[] bArr = new byte[d];
            int b2 = b(bArr, e);
            if (b2 == d) {
                return bArr;
            }
            byte[] bArr2 = new byte[b2];
            System.arraycopy(bArr, 0, bArr2, 0, b2);
            return bArr2;
        } catch (zzgvw e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
