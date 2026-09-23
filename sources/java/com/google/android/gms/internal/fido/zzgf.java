package com.google.android.gms.internal.fido;

import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class zzgf {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgf f10317a;

    static {
        new zzgd("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new zzgd("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new zzge("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new zzge("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        f10317a = new zzgc(new zzgb("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public abstract void a(StringBuilder sb, byte[] bArr, int i);

    public abstract int b(int i);

    public final String c(byte[] bArr, int i) {
        zzbm.b(0, i, bArr.length);
        StringBuilder sb = new StringBuilder(b(i));
        try {
            a(sb, bArr, i);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
