package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.KotlinVersion;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public final class zzer {
    public static final char[] d = {'\r', '\n'};
    public static final char[] e = {'\n'};
    public static final zzgtn f = zzgtn.x(5, StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);
    public static final AtomicBoolean g = new AtomicBoolean();

    /* renamed from: a, reason: collision with root package name */
    public byte[] f6834a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f6835c;

    public zzer(byte[] bArr, int i) {
        this.f6834a = bArr;
        this.f6835c = i;
    }

    public static int u(Charset charset) {
        zzgqa.e("Unsupported charset: %s", charset, f.contains(charset));
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(StandardCharsets.US_ASCII)) {
            return 2;
        }
        return 1;
    }

    public static boolean w(byte b) {
        return (b & 192) == 128;
    }

    public static int x(int i, int i2, int i3, int i4) {
        return zzgwx.c((byte) 0, zzgxb.a(((i & 7) << 2) | ((i2 & 48) >> 4)), zzgxb.a(((i3 & 60) >> 2) | ((i2 & 15) << 4)), zzgxb.a((i4 & 63) | ((i3 & 3) << 6)));
    }

    public final void A(int i) {
        byte[] bArr = this.f6834a;
        if (i > bArr.length) {
            this.f6834a = Arrays.copyOf(bArr, i);
        }
    }

    public final int B() {
        return Math.max(this.f6835c - this.b, 0);
    }

    public final void C(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.f6834a.length) {
            z = true;
        }
        zzgqa.a(z);
        this.f6835c = i;
    }

    public final int D() {
        return this.b;
    }

    public final void E(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.f6835c) {
            z = true;
        }
        zzgqa.a(z);
        this.b = i;
    }

    public final byte[] F() {
        return this.f6834a;
    }

    public final void G(int i) {
        E(this.b + i);
    }

    public final void H(byte[] bArr, int i, int i2) {
        v(i2);
        System.arraycopy(this.f6834a, this.b, bArr, i, i2);
        this.b += i2;
    }

    public final int I() {
        v(1);
        return this.f6834a[this.b] & UByte.MAX_VALUE;
    }

    public final int J() {
        if (B() >= 4) {
            this.b -= 4;
            return b();
        }
        int i = this.b;
        int i2 = this.f6835c;
        throw new IndexOutOfBoundsException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 17 + String.valueOf(i2).length()), "position=", i, ", limit=", i2));
    }

    public final int K() {
        v(1);
        byte[] bArr = this.f6834a;
        int i = this.b;
        this.b = i + 1;
        return bArr[i] & UByte.MAX_VALUE;
    }

    public final int L() {
        v(2);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & UByte.MAX_VALUE;
        this.b = i + 2;
        return (bArr[i2] & UByte.MAX_VALUE) | (i3 << 8);
    }

    public final int M() {
        v(2);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & UByte.MAX_VALUE;
        this.b = i + 2;
        return ((bArr[i2] & UByte.MAX_VALUE) << 8) | i3;
    }

    public final short N() {
        v(2);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & UByte.MAX_VALUE;
        this.b = i + 2;
        return (short) ((bArr[i2] & UByte.MAX_VALUE) | (i3 << 8));
    }

    public final int O() {
        v(3);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & UByte.MAX_VALUE;
        int i4 = i + 2;
        this.b = i4;
        int i5 = bArr[i2] & UByte.MAX_VALUE;
        this.b = i + 3;
        return (bArr[i4] & UByte.MAX_VALUE) | (i3 << 16) | (i5 << 8);
    }

    public final long P() {
        v(4);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.b = i3;
        long j2 = bArr[i2];
        this.b = i + 3;
        long j3 = bArr[i3];
        this.b = i + 4;
        return (bArr[r3] & 255) | ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8);
    }

    public final long a() {
        v(4);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.b = i3;
        long j2 = bArr[i2];
        this.b = i + 3;
        long j3 = bArr[i3];
        this.b = i + 4;
        return ((bArr[r3] & 255) << 24) | (255 & j) | ((j2 & 255) << 8) | ((j3 & 255) << 16);
    }

    public final int b() {
        v(4);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & UByte.MAX_VALUE;
        int i4 = i + 2;
        this.b = i4;
        int i5 = bArr[i2] & UByte.MAX_VALUE;
        int i6 = i + 3;
        this.b = i6;
        int i7 = bArr[i4] & UByte.MAX_VALUE;
        this.b = i + 4;
        return (bArr[i6] & UByte.MAX_VALUE) | (i3 << 24) | (i5 << 16) | (i7 << 8);
    }

    public final int c() {
        v(4);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & UByte.MAX_VALUE;
        int i4 = i + 2;
        this.b = i4;
        int i5 = bArr[i2] & UByte.MAX_VALUE;
        int i6 = i + 3;
        this.b = i6;
        int i7 = bArr[i4] & UByte.MAX_VALUE;
        this.b = i + 4;
        return ((bArr[i6] & UByte.MAX_VALUE) << 24) | (i5 << 8) | i3 | (i7 << 16);
    }

    public final long d() {
        v(8);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.b = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.b = i4;
        long j3 = bArr[i3];
        int i5 = i + 4;
        this.b = i5;
        long j4 = bArr[i4];
        int i6 = i + 5;
        this.b = i6;
        long j5 = bArr[i5];
        int i7 = i + 6;
        this.b = i7;
        long j6 = bArr[i6];
        this.b = i + 7;
        long j7 = bArr[i7];
        this.b = i + 8;
        return ((j7 & 255) << 8) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | (bArr[r4] & 255);
    }

    public final long e() {
        v(8);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.b = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.b = i4;
        long j3 = bArr[i3];
        int i5 = i + 4;
        this.b = i5;
        long j4 = bArr[i4];
        int i6 = i + 5;
        this.b = i6;
        long j5 = bArr[i5];
        int i7 = i + 6;
        this.b = i7;
        long j6 = bArr[i6];
        this.b = i + 7;
        long j7 = bArr[i7];
        this.b = i + 8;
        return ((j7 & 255) << 48) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40) | ((bArr[r4] & 255) << 56);
    }

    public final int f() {
        v(4);
        byte[] bArr = this.f6834a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & UByte.MAX_VALUE;
        this.b = i + 2;
        int i4 = bArr[i2] & UByte.MAX_VALUE;
        this.b = i + 4;
        return (i3 << 8) | i4;
    }

    public final int g() {
        return (K() << 21) | (K() << 14) | (K() << 7) | K();
    }

    public final int h() {
        int b = b();
        if (b >= 0) {
            return b;
        }
        throw new IllegalStateException(androidx.work.impl.workers.a.r(b, "Top bit not zero: ", new StringBuilder(String.valueOf(b).length() + 18)));
    }

    public final int i() {
        int c2 = c();
        if (c2 >= 0) {
            return c2;
        }
        throw new IllegalStateException(androidx.work.impl.workers.a.r(c2, "Top bit not zero: ", new StringBuilder(String.valueOf(c2).length() + 18)));
    }

    public final long j() {
        long d2 = d();
        if (d2 >= 0) {
            return d2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(d2).length() + 18);
        sb.append("Top bit not zero: ");
        sb.append(d2);
        throw new IllegalStateException(sb.toString());
    }

    public final String k(int i, Charset charset) {
        v(i);
        byte[] bArr = this.f6834a;
        int i2 = this.b;
        String str = new String(bArr, i2, i, charset);
        this.b = i2 + i;
        return str;
    }

    public final String l(int i) {
        int i2;
        v(i);
        if (i == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int i3 = this.b;
        int i4 = (i3 + i) - 1;
        if (i4 < this.f6835c && this.f6834a[i4] == 0) {
            i2 = i - 1;
        } else {
            i2 = i;
        }
        byte[] bArr = this.f6834a;
        String str = zzfj.f7405a;
        String str2 = new String(bArr, i3, i2, StandardCharsets.UTF_8);
        this.b += i;
        return str2;
    }

    public final String m() {
        if (B() == 0) {
            return null;
        }
        int i = this.b;
        while (i < this.f6835c && this.f6834a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f6834a;
        int i2 = this.b;
        String str = zzfj.f7405a;
        String str2 = new String(bArr, i2, i - i2, StandardCharsets.UTF_8);
        this.b = i;
        if (i < this.f6835c) {
            this.b = i + 1;
        }
        return str2;
    }

    public final String n(Charset charset) {
        zzgqa.e("Unsupported charset: %s", charset, f.contains(charset));
        if (B() == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            q();
        }
        int i = 1;
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(charset2)) {
            i = 2;
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: ".concat(String.valueOf(charset)));
            }
        }
        int i2 = this.b;
        while (true) {
            int i3 = this.f6835c;
            if (i2 < i3 - (i - 1)) {
                if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
                    byte b = this.f6834a[i2];
                    String str = zzfj.f7405a;
                    if (b != 10) {
                        if (b == 13) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                    byte[] bArr = this.f6834a;
                    if (bArr[i2] == 0) {
                        byte b2 = bArr[i2 + 1];
                        String str2 = zzfj.f7405a;
                        if (b2 != 10) {
                            if (b2 == 13) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    byte[] bArr2 = this.f6834a;
                    if (bArr2[i2 + 1] == 0) {
                        byte b3 = bArr2[i2];
                        String str3 = zzfj.f7405a;
                        if (b3 == 10 || b3 == 13) {
                            break;
                        }
                    } else {
                        continue;
                    }
                }
                i2 += i;
            } else {
                i2 = i3;
                break;
            }
        }
        String k = k(i2 - this.b, charset);
        if (this.b != this.f6835c && s(charset, d) == '\r') {
            s(charset, e);
        }
        return k;
    }

    public final long o() {
        int i;
        v(1);
        long j = this.f6834a[this.b];
        int i2 = 7;
        while (true) {
            i = 0;
            if (i2 < 0) {
                break;
            }
            if (((1 << i2) & j) != 0) {
                i2--;
            } else if (i2 < 6) {
                j &= r7 - 1;
                i = 7 - i2;
            } else if (i2 == 7) {
                i = 1;
            }
        }
        if (i != 0) {
            v(i);
            for (int i3 = 1; i3 < i; i3++) {
                if ((this.f6834a[this.b + i3] & 192) == 128) {
                    j = (j << 6) | (r3 & 63);
                } else {
                    StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 42);
                    sb.append("Invalid UTF-8 sequence continuation byte: ");
                    sb.append(j);
                    throw new NumberFormatException(sb.toString());
                }
            }
            this.b += i;
            return j;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(j).length() + 35);
        sb2.append("Invalid UTF-8 sequence first byte: ");
        sb2.append(j);
        throw new NumberFormatException(sb2.toString());
    }

    public final long p() {
        long j = 0;
        for (int i = 0; i < 9; i++) {
            if (this.b != this.f6835c) {
                long K = K();
                j |= (127 & K) << (i * 7);
                if ((K & 128) == 0) {
                    return j;
                }
            } else {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
        }
        return j;
    }

    public final Charset q() {
        if (B() >= 3) {
            byte[] bArr = this.f6834a;
            int i = this.b;
            if (bArr[i] == -17 && bArr[i + 1] == -69 && bArr[i + 2] == -65) {
                this.b = i + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (B() >= 2) {
            byte[] bArr2 = this.f6834a;
            int i2 = this.b;
            byte b = bArr2[i2];
            if (b == -2) {
                if (bArr2[i2 + 1] == -1) {
                    this.b = i2 + 2;
                    return StandardCharsets.UTF_16BE;
                }
                return null;
            }
            if (b == -1 && bArr2[i2 + 1] == -2) {
                this.b = i2 + 2;
                return StandardCharsets.UTF_16LE;
            }
            return null;
        }
        return null;
    }

    public final char r(int i, ByteOrder byteOrder) {
        byte b;
        byte b2;
        v(2);
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.f6834a;
            int i2 = this.b + i;
            b = bArr[i2];
            b2 = bArr[i2 + 1];
        } else {
            byte[] bArr2 = this.f6834a;
            int i3 = this.b + i;
            b = bArr2[i3 + 1];
            b2 = bArr2[i3];
        }
        return (char) ((b << 8) | (b2 & UByte.MAX_VALUE));
    }

    public final char s(Charset charset, char[] cArr) {
        int t;
        boolean z;
        if (B() >= u(charset) && (t = t(charset)) != 0) {
            if (!Character.isSupplementaryCodePoint(r0)) {
                long j = r0;
                char c2 = (char) j;
                if (c2 == j) {
                    z = true;
                } else {
                    z = false;
                }
                zzgqa.d("Out of range: %s", j, z);
                for (char c3 : cArr) {
                    if (c3 == c2) {
                        this.b = zzgwx.a(t & KotlinVersion.MAX_COMPONENT_VALUE) + this.b;
                        return c2;
                    }
                }
            }
        }
        return (char) 0;
    }

    public final int t(Charset charset) {
        ByteOrder byteOrder;
        int i;
        int i2;
        int i3;
        zzgqa.e("Unsupported charset: %s", charset, f.contains(charset));
        if (B() >= u(charset)) {
            int i4 = 1;
            if (charset.equals(StandardCharsets.US_ASCII)) {
                byte b = this.f6834a[this.b];
                if ((b & ByteCompanionObject.MIN_VALUE) == 0) {
                    i = b & UByte.MAX_VALUE;
                    return (i << 8) | i4;
                }
                return 0;
            }
            if (charset.equals(StandardCharsets.UTF_8)) {
                byte b2 = this.f6834a[this.b];
                if ((b2 & ByteCompanionObject.MIN_VALUE) == 0) {
                    i2 = 1;
                } else if ((b2 & 224) == 192 && B() >= 2 && w(this.f6834a[this.b + 1])) {
                    i2 = 2;
                } else {
                    if ((this.f6834a[this.b] & 240) == 224 && B() >= 3) {
                        byte[] bArr = this.f6834a;
                        int i5 = this.b;
                        if (w(bArr[i5 + 1]) && w(bArr[i5 + 2])) {
                            i2 = 3;
                        }
                    }
                    if ((this.f6834a[this.b] & 248) == 240 && B() >= 4) {
                        byte[] bArr2 = this.f6834a;
                        int i6 = this.b;
                        if (w(bArr2[i6 + 1]) && w(bArr2[i6 + 2]) && w(bArr2[i6 + 3])) {
                            i2 = 4;
                        }
                    }
                    i2 = 0;
                }
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                byte[] bArr3 = this.f6834a;
                                int i7 = this.b;
                                i3 = x(bArr3[i7], bArr3[i7 + 1], bArr3[i7 + 2], bArr3[i7 + 3]);
                            }
                            return 0;
                        }
                        byte[] bArr4 = this.f6834a;
                        int i8 = this.b;
                        i3 = x(0, bArr4[i8] & 15, bArr4[i8 + 1], bArr4[i8 + 2]);
                    } else {
                        byte[] bArr5 = this.f6834a;
                        int i9 = this.b;
                        i3 = x(0, 0, bArr5[i9], bArr5[i9 + 1]);
                    }
                } else {
                    i3 = this.f6834a[this.b] & UByte.MAX_VALUE;
                }
                i4 = i2;
                i = i3;
            } else {
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    byteOrder = ByteOrder.LITTLE_ENDIAN;
                } else {
                    byteOrder = ByteOrder.BIG_ENDIAN;
                }
                char r = r(0, byteOrder);
                if (Character.isHighSurrogate(r) && B() >= 4) {
                    i = Character.toCodePoint(r, r(2, byteOrder));
                    i4 = 4;
                } else {
                    i = r;
                    i4 = 2;
                }
            }
            return (i << 8) | i4;
        }
        int i10 = this.b;
        int i11 = this.f6835c;
        throw new IndexOutOfBoundsException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i10).length() + 17 + String.valueOf(i11).length()), "position=", i10, ", limit=", i11));
    }

    public final void v(int i) {
        if (g.get() && B() < i) {
            int B = B();
            throw new IndexOutOfBoundsException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 25 + String.valueOf(B).length()), "bytesNeeded= ", i, ", bytesLeft=", B));
        }
    }

    public final void y(int i) {
        byte[] bArr = this.f6834a;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        z(bArr, i);
    }

    public final void z(byte[] bArr, int i) {
        this.f6834a = bArr;
        this.f6835c = i;
        this.b = 0;
    }

    public zzer() {
        this.f6834a = zzfj.b;
    }

    public zzer(int i) {
        this.f6834a = new byte[i];
        this.f6835c = i;
    }

    public zzer(byte[] bArr) {
        this.f6834a = bArr;
        this.f6835c = bArr.length;
    }
}
