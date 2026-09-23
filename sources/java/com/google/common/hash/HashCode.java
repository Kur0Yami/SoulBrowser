package com.google.common.hash;

import java.io.Serializable;
import kotlin.UByte;

/* loaded from: classes3.dex */
public abstract class HashCode {

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f12452c = "0123456789abcdef".toCharArray();

    /* loaded from: classes3.dex */
    public static final class BytesHashCode extends HashCode implements Serializable {
        @Override // com.google.common.hash.HashCode
        public final byte[] a() {
            throw null;
        }

        @Override // com.google.common.hash.HashCode
        public final int b() {
            throw null;
        }

        @Override // com.google.common.hash.HashCode
        public final long c() {
            throw null;
        }

        @Override // com.google.common.hash.HashCode
        public final int d() {
            throw null;
        }

        @Override // com.google.common.hash.HashCode
        public final boolean e(HashCode hashCode) {
            throw null;
        }

        @Override // com.google.common.hash.HashCode
        public final byte[] f() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class IntHashCode extends HashCode implements Serializable {
        @Override // com.google.common.hash.HashCode
        public final byte[] a() {
            return new byte[]{(byte) 0, (byte) (0 >> 8), (byte) (0 >> 16), (byte) (0 >> 24)};
        }

        @Override // com.google.common.hash.HashCode
        public final int b() {
            return 0;
        }

        @Override // com.google.common.hash.HashCode
        public final long c() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override // com.google.common.hash.HashCode
        public final int d() {
            return 32;
        }

        @Override // com.google.common.hash.HashCode
        public final boolean e(HashCode hashCode) {
            if (hashCode.b() == 0) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public static final class LongHashCode extends HashCode implements Serializable {
        @Override // com.google.common.hash.HashCode
        public final byte[] a() {
            return new byte[]{(byte) 0, (byte) (0 >> 8), (byte) (0 >> 16), (byte) (0 >> 24), (byte) (0 >> 32), (byte) (0 >> 40), (byte) (0 >> 48), (byte) (0 >> 56)};
        }

        @Override // com.google.common.hash.HashCode
        public final int b() {
            return (int) 0;
        }

        @Override // com.google.common.hash.HashCode
        public final long c() {
            return 0L;
        }

        @Override // com.google.common.hash.HashCode
        public final int d() {
            return 64;
        }

        @Override // com.google.common.hash.HashCode
        public final boolean e(HashCode hashCode) {
            if (0 == hashCode.c()) {
                return true;
            }
            return false;
        }
    }

    public abstract byte[] a();

    public abstract int b();

    public abstract long c();

    public abstract int d();

    public abstract boolean e(HashCode hashCode);

    public final boolean equals(Object obj) {
        if (obj instanceof HashCode) {
            HashCode hashCode = (HashCode) obj;
            if (d() == hashCode.d() && e(hashCode)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public byte[] f() {
        return a();
    }

    public final int hashCode() {
        if (d() >= 32) {
            return b();
        }
        byte[] f = f();
        int i = f[0] & UByte.MAX_VALUE;
        for (int i2 = 1; i2 < f.length; i2++) {
            i |= (f[i2] & UByte.MAX_VALUE) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] f = f();
        StringBuilder sb = new StringBuilder(f.length * 2);
        for (byte b : f) {
            char[] cArr = f12452c;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & 15]);
        }
        return sb.toString();
    }
}
