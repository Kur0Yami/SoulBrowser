package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;
import java.math.BigInteger;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes4.dex */
public final class ZipEightByteInteger implements Serializable {
    public static final ZipEightByteInteger f = new ZipEightByteInteger(0);

    /* renamed from: c, reason: collision with root package name */
    public final BigInteger f22302c;

    public ZipEightByteInteger(long j) {
        this.f22302c = BigInteger.valueOf(j);
    }

    public static byte[] a(BigInteger bigInteger) {
        long longValue = bigInteger.longValue();
        byte[] bArr = {(byte) (255 & longValue), (byte) ((65280 & longValue) >> 8), (byte) ((16711680 & longValue) >> 16), (byte) ((4278190080L & longValue) >> 24), (byte) ((1095216660480L & longValue) >> 32), (byte) ((280375465082880L & longValue) >> 40), (byte) ((71776119061217280L & longValue) >> 48), (byte) ((longValue & 9151314442816847872L) >> 56)};
        if (bigInteger.testBit(63)) {
            bArr[7] = (byte) (bArr[7] | ByteCompanionObject.MIN_VALUE);
        }
        return bArr;
    }

    public static BigInteger b(byte[] bArr, int i) {
        int i2 = i + 7;
        BigInteger valueOf = BigInteger.valueOf(((bArr[i2] << 56) & 9151314442816847872L) + ((bArr[i + 6] << 48) & 71776119061217280L) + ((bArr[i + 5] << 40) & 280375465082880L) + ((bArr[i + 4] << 32) & 1095216660480L) + ((bArr[i + 3] << 24) & 4278190080L) + ((bArr[i + 2] << 16) & 16711680) + ((bArr[i + 1] << 8) & 65280) + (bArr[i] & 255));
        if ((bArr[i2] & ByteCompanionObject.MIN_VALUE) == -128) {
            return valueOf.setBit(63);
        }
        return valueOf;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof ZipEightByteInteger)) {
            return this.f22302c.equals(((ZipEightByteInteger) obj).f22302c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f22302c.hashCode();
    }

    public final String toString() {
        return "ZipEightByteInteger value: " + this.f22302c;
    }

    public ZipEightByteInteger(byte[] bArr, int i) {
        this.f22302c = b(bArr, i);
    }
}
