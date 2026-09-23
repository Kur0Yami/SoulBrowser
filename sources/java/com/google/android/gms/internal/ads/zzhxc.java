package com.google.android.gms.internal.ads;

import java.util.Arrays;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzhxc {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f8863a;

    public zzhxc(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        this.f8863a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i);
    }

    public static zzhxc a(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            int length2 = bArr.length;
            if (length > length2) {
                length = length2;
            }
            return new zzhxc(bArr, length);
        }
        throw new NullPointerException("data must be non-null");
    }

    public final byte[] b() {
        byte[] bArr = this.f8863a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhxc)) {
            return false;
        }
        return Arrays.equals(((zzhxc) obj).f8863a, this.f8863a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f8863a);
    }

    public final String toString() {
        byte[] bArr = this.f8863a;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : bArr) {
            sb.append("0123456789abcdef".charAt((b & UByte.MAX_VALUE) >> 4));
            sb.append("0123456789abcdef".charAt(b & 15));
        }
        String sb2 = sb.toString();
        return android.support.v4.media.a.q(new StringBuilder(sb2.length() + 7), "Bytes(", sb2, ")");
    }
}
