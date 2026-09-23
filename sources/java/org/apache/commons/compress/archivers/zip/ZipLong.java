package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;
import kotlin.UByte;

/* loaded from: classes4.dex */
public final class ZipLong implements Cloneable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final long f22311c;

    public ZipLong(long j) {
        this.f22311c = j;
    }

    public static byte[] a(long j) {
        return new byte[]{(byte) (255 & j), (byte) ((65280 & j) >> 8), (byte) ((16711680 & j) >> 16), (byte) ((j & 4278190080L) >> 24)};
    }

    public static long b(byte[] bArr, int i) {
        return ((bArr[i + 3] << 24) & 4278190080L) + ((bArr[i + 2] << 16) & 16711680) + ((bArr[i + 1] << 8) & 65280) + (bArr[i] & UByte.MAX_VALUE);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof ZipLong)) {
            if (this.f22311c == ((ZipLong) obj).f22311c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.f22311c;
    }

    public final String toString() {
        return "ZipLong value: " + this.f22311c;
    }

    public ZipLong(byte[] bArr, int i) {
        this.f22311c = b(bArr, i);
    }
}
