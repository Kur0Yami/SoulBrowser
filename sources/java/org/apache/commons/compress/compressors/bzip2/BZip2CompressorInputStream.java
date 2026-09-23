package org.apache.commons.compress.compressors.bzip2;

import android.support.v4.media.a;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import kotlin.UByte;
import org.apache.commons.compress.compressors.CompressorInputStream;

/* loaded from: classes4.dex */
public class BZip2CompressorInputStream extends CompressorInputStream implements BZip2Constants {
    public char A;
    public Data B;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public int j;
    public int k;
    public final CRC l;
    public int m;
    public InputStream n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    /* loaded from: classes4.dex */
    public static final class Data {

        /* renamed from: a, reason: collision with root package name */
        public final boolean[] f22316a = new boolean[256];
        public final byte[] b = new byte[256];

        /* renamed from: c, reason: collision with root package name */
        public final byte[] f22317c = new byte[18002];
        public final byte[] d = new byte[18002];
        public final int[] e = new int[256];
        public final int[][] f;
        public final int[][] g;
        public final int[][] h;
        public final int[] i;
        public final int[] j;
        public final char[] k;
        public final char[][] l;
        public final byte[] m;
        public int[] n;
        public final byte[] o;

        public Data(int i) {
            Class cls = Integer.TYPE;
            this.f = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.g = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.h = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.i = new int[6];
            this.j = new int[257];
            this.k = new char[256];
            this.l = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 6, 258);
            this.m = new byte[6];
            this.o = new byte[i * 100000];
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.commons.compress.compressors.bzip2.CRC, java.lang.Object] */
    public BZip2CompressorInputStream(InputStream inputStream) {
        ?? obj = new Object();
        obj.f22318a = -1;
        this.l = obj;
        this.o = 1;
        this.n = inputStream;
        InputStream inputStream2 = this.n;
        if (inputStream2 != null) {
            int read = inputStream2.read();
            int read2 = this.n.read();
            int read3 = this.n.read();
            if (read == 66 && read2 == 90 && read3 == 104) {
                int read4 = this.n.read();
                if (read4 >= 49 && read4 <= 57) {
                    this.h = read4 - 48;
                    this.k = 0;
                    this.r = 0;
                    f();
                    return;
                }
                throw new IOException("BZip2 block size is invalid");
            }
            throw new IOException("Stream is not in the BZip2 format");
        }
        throw new IOException("No InputStream");
    }

    public final char b() {
        return (char) d(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.n;
        if (inputStream != null) {
            try {
                if (inputStream != System.in) {
                    inputStream.close();
                }
            } finally {
                this.B = null;
                this.n = null;
            }
        }
    }

    public final int d(int i) {
        int i2 = this.k;
        int i3 = this.j;
        if (i2 < i) {
            InputStream inputStream = this.n;
            do {
                int read = inputStream.read();
                if (read >= 0) {
                    i3 = (i3 << 8) | read;
                    i2 += 8;
                } else {
                    throw new IOException("unexpected end of stream");
                }
            } while (i2 < i);
            this.j = i3;
        }
        int i4 = i2 - i;
        this.k = i4;
        return ((1 << i) - 1) & (i3 >> i4);
    }

    public final void e() {
        int i = ~this.l.f22318a;
        int i2 = this.p;
        if (i2 == i) {
            int i3 = this.r;
            this.r = i ^ ((i3 >>> 31) | (i3 << 1));
        } else {
            int i4 = this.q;
            this.r = ((i4 >>> 31) | (i4 << 1)) ^ i2;
            throw new IOException("BZip2 CRC error");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v13, types: [int] */
    /* JADX WARN: Type inference failed for: r8v34, types: [int] */
    public final void f() {
        int i;
        int i2;
        char c2;
        int i3;
        char b = b();
        char b2 = b();
        char b3 = b();
        char b4 = b();
        char b5 = b();
        char b6 = b();
        char c3 = 0;
        if (b == 23 && b2 == 'r' && b3 == 'E' && b4 == '8' && b5 == 'P' && b6 == 144) {
            int d = (((((d(8) << 8) | d(8)) << 8) | d(8)) << 8) | d(8);
            this.q = d;
            this.o = 0;
            this.B = null;
            if (d != this.r) {
                throw new IOException("BZip2 CRC error");
            }
            return;
        }
        if (b == '1' && b2 == 'A' && b3 == 'Y' && b4 == '&' && b5 == 'S' && b6 == 'Y') {
            this.p = (((((d(8) << 8) | d(8)) << 8) | d(8)) << 8) | d(8);
            int i4 = 1;
            this.i = d(1) == 1;
            if (this.B == null) {
                this.B = new Data(this.h);
            }
            this.g = d(24);
            Data data = this.B;
            boolean[] zArr = data.f22316a;
            byte[] bArr = data.m;
            byte[] bArr2 = data.f22317c;
            byte[] bArr3 = data.d;
            int i5 = 0;
            for (int i6 = 0; i6 < 16; i6++) {
                if (d(1) != 0) {
                    i5 |= 1 << i6;
                }
            }
            int i7 = 256;
            while (true) {
                i = -1;
                i7--;
                if (i7 < 0) {
                    break;
                } else {
                    zArr[i7] = false;
                }
            }
            for (int i8 = 0; i8 < 16; i8++) {
                if (((1 << i8) & i5) != 0) {
                    int i9 = i8 << 4;
                    for (int i10 = 0; i10 < 16; i10++) {
                        if (d(1) != 0) {
                            zArr[i9 + i10] = true;
                        }
                    }
                }
            }
            Data data2 = this.B;
            boolean[] zArr2 = data2.f22316a;
            byte[] bArr4 = data2.b;
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 256; i11 < i13; i13 = 256) {
                if (zArr2[i11]) {
                    bArr4[i12] = (byte) i11;
                    i12++;
                }
                i11++;
            }
            this.m = i12;
            int i14 = i12 + 2;
            int d2 = d(3);
            int d3 = d(15);
            for (int i15 = 0; i15 < d3; i15++) {
                int i16 = 0;
                while (d(1) != 0) {
                    i16++;
                }
                bArr3[i15] = (byte) i16;
            }
            int i17 = d2;
            while (true) {
                i17--;
                if (i17 < 0) {
                    break;
                } else {
                    bArr[i17] = (byte) i17;
                }
            }
            for (int i18 = 0; i18 < d3; i18++) {
                int i19 = bArr3[i18] & UByte.MAX_VALUE;
                byte b7 = bArr[i19];
                while (i19 > 0) {
                    bArr[i19] = bArr[i19 - 1];
                    i19--;
                }
                bArr[0] = b7;
                bArr2[i18] = b7;
            }
            char[][] cArr = data.l;
            for (int i20 = 0; i20 < d2; i20++) {
                int d4 = d(5);
                char[] cArr2 = cArr[i20];
                for (int i21 = 0; i21 < i14; i21++) {
                    while (d(1) != 0) {
                        d4 += d(1) != 0 ? -1 : 1;
                    }
                    cArr2[i21] = (char) d4;
                }
            }
            Data data3 = this.B;
            char[][] cArr3 = data3.l;
            int[] iArr = data3.i;
            int[][] iArr2 = data3.f;
            int[][] iArr3 = data3.g;
            int[][] iArr4 = data3.h;
            int i22 = 0;
            while (i22 < d2) {
                char[] cArr4 = cArr3[i22];
                char c4 = ' ';
                int i23 = i14;
                int i24 = i;
                char c5 = c3;
                while (true) {
                    i23--;
                    if (i23 < 0) {
                        break;
                    }
                    char c6 = c3;
                    char c7 = cArr4[i23];
                    if (c7 > c5) {
                        c5 = c7;
                    }
                    if (c7 < c4) {
                        c4 = c7;
                    }
                    c3 = c6;
                }
                char c8 = c3;
                int[] iArr5 = iArr2[i22];
                int[] iArr6 = iArr3[i22];
                int[] iArr7 = iArr4[i22];
                char[] cArr5 = cArr3[i22];
                int i25 = c4;
                char c9 = c8;
                while (i25 <= c5) {
                    int i26 = i4;
                    for (int i27 = c8; i27 < i14; i27++) {
                        if (cArr5[i27] == i25) {
                            iArr7[c9] = i27;
                            c9++;
                        }
                    }
                    i25++;
                    i4 = i26;
                }
                int i28 = i4;
                int i29 = 23;
                while (true) {
                    i29--;
                    if (i29 <= 0) {
                        break;
                    }
                    iArr6[i29] = c8;
                    iArr5[i29] = c8;
                }
                for (int i30 = c8; i30 < i14; i30++) {
                    int i31 = cArr5[i30] + 1;
                    iArr6[i31] = iArr6[i31] + 1;
                }
                int i32 = iArr6[c8];
                for (int i33 = i28; i33 < 23; i33++) {
                    i32 += iArr6[i33];
                    iArr6[i33] = i32;
                }
                int i34 = iArr6[c4];
                char c10 = c4;
                int i35 = c8;
                while (c10 <= c5) {
                    ?? r17 = c10 + 1;
                    int i36 = iArr6[r17];
                    int i37 = (i36 - i34) + i35;
                    iArr5[c10] = i37 - 1;
                    i35 = i37 << 1;
                    c10 = r17;
                    i34 = i36;
                }
                for (int i38 = c4 + 1; i38 <= c5; i38++) {
                    iArr6[i38] = ((iArr5[i38 - 1] + 1) << 1) - iArr6[i38];
                }
                iArr[i22] = c4;
                i22++;
                i = i24;
                c3 = c8;
                i4 = i28;
            }
            int i39 = i4;
            char c11 = c3;
            int i40 = i;
            InputStream inputStream = this.n;
            Data data4 = this.B;
            byte[] bArr5 = data4.o;
            int[] iArr8 = data4.e;
            byte[] bArr6 = data4.f22317c;
            byte[] bArr7 = data4.b;
            char[] cArr6 = data4.k;
            int[] iArr9 = data4.i;
            int[][] iArr10 = data4.f;
            int[][] iArr11 = data4.g;
            int[][] iArr12 = data4.h;
            int i41 = this.h * 100000;
            int i42 = 256;
            while (true) {
                int i43 = i42 - 1;
                if (i43 < 0) {
                    break;
                }
                cArr6[i43] = (char) i43;
                iArr8[i43] = c11;
                i42 = i43;
            }
            int i44 = this.m + 1;
            InputStream inputStream2 = this.n;
            Data data5 = this.B;
            int i45 = data5.f22317c[c11] & UByte.MAX_VALUE;
            int[] iArr13 = data5.f[i45];
            int i46 = data5.i[i45];
            int d5 = d(i46);
            int i47 = this.k;
            int i48 = this.j;
            int i49 = i47;
            int i50 = d5;
            int i51 = i46;
            while (true) {
                byte[] bArr8 = bArr6;
                if (i50 <= iArr13[i51]) {
                    this.k = i49;
                    this.j = i48;
                    int i52 = data5.h[i45][i50 - data5.g[i45][i51]];
                    int i53 = bArr8[c11] & UByte.MAX_VALUE;
                    int[] iArr14 = iArr11[i53];
                    int[] iArr15 = iArr10[i53];
                    int[] iArr16 = iArr12[i53];
                    int i54 = iArr9[i53];
                    int i55 = i40;
                    int i56 = c11;
                    int i57 = 49;
                    while (i52 != i44) {
                        byte[] bArr9 = bArr7;
                        int[] iArr17 = iArr9;
                        if (i52 == 0 || i52 == 1) {
                            int i58 = i40;
                            int i59 = 1;
                            while (true) {
                                if (i52 == 0) {
                                    i58 += i59;
                                    i2 = i49;
                                } else {
                                    i2 = i49;
                                    if (i52 == 1) {
                                        i58 += i59 << 1;
                                    } else {
                                        byte b8 = bArr9[cArr6[0]];
                                        int i60 = b8 & UByte.MAX_VALUE;
                                        iArr8[i60] = i58 + 1 + iArr8[i60];
                                        while (true) {
                                            int i61 = i58 - 1;
                                            if (i58 < 0) {
                                                break;
                                            }
                                            i55++;
                                            bArr5[i55] = b8;
                                            i58 = i61;
                                        }
                                        if (i55 >= i41) {
                                            throw new IOException("block overrun");
                                        }
                                        bArr7 = bArr9;
                                        iArr9 = iArr17;
                                        i49 = i2;
                                    }
                                }
                                if (i57 == 0) {
                                    i56++;
                                    int i62 = bArr8[i56] & UByte.MAX_VALUE;
                                    iArr14 = iArr11[i62];
                                    iArr15 = iArr10[i62];
                                    iArr16 = iArr12[i62];
                                    i54 = iArr17[i62];
                                    i57 = 49;
                                } else {
                                    i57--;
                                }
                                int i63 = i54;
                                int i64 = i48;
                                int i65 = i2;
                                while (i65 < i63) {
                                    int read = inputStream.read();
                                    if (read < 0) {
                                        throw new IOException("unexpected end of stream");
                                    }
                                    i64 = (i64 << 8) | read;
                                    i65 += 8;
                                }
                                int i66 = i65 - i63;
                                int i67 = i66;
                                int i68 = (i64 >> i66) & ((1 << i63) - 1);
                                int i69 = i63;
                                while (i68 > iArr15[i69]) {
                                    i69++;
                                    int i70 = i68;
                                    int i71 = i67;
                                    while (i71 < 1) {
                                        int read2 = inputStream.read();
                                        if (read2 < 0) {
                                            throw new IOException("unexpected end of stream");
                                        }
                                        i64 = (i64 << 8) | read2;
                                        i71 += 8;
                                    }
                                    i67 = i71 - 1;
                                    i68 = (i70 << 1) | ((i64 >> i67) & 1);
                                }
                                int i72 = iArr16[i68 - iArr14[i69]];
                                i59 <<= 1;
                                i48 = i64;
                                i54 = i63;
                                i52 = i72;
                                i49 = i67;
                            }
                        } else {
                            int i73 = i55 + 1;
                            if (i73 < i41) {
                                int i74 = i52 - 1;
                                char c12 = cArr6[i74];
                                byte b9 = bArr9[c12];
                                int i75 = b9 & UByte.MAX_VALUE;
                                iArr8[i75] = iArr8[i75] + 1;
                                bArr5[i73] = b9;
                                if (i52 <= 16) {
                                    while (i74 > 0) {
                                        int i76 = i74 - 1;
                                        cArr6[i74] = cArr6[i76];
                                        i74 = i76;
                                    }
                                    c2 = c11;
                                } else {
                                    c2 = c11;
                                    System.arraycopy(cArr6, c2, cArr6, 1, i74);
                                }
                                cArr6[c2] = c12;
                                if (i57 == 0) {
                                    i56++;
                                    int i77 = bArr8[i56] & UByte.MAX_VALUE;
                                    int[] iArr18 = iArr11[i77];
                                    int[] iArr19 = iArr10[i77];
                                    int[] iArr20 = iArr12[i77];
                                    i3 = iArr17[i77];
                                    iArr15 = iArr19;
                                    iArr16 = iArr20;
                                    i57 = 49;
                                    iArr14 = iArr18;
                                } else {
                                    i57--;
                                    i3 = i54;
                                }
                                while (i49 < i3) {
                                    int read3 = inputStream.read();
                                    if (read3 < 0) {
                                        throw new IOException("unexpected end of stream");
                                    }
                                    i48 = (i48 << 8) | read3;
                                    i49 += 8;
                                }
                                i49 -= i3;
                                int i78 = 1;
                                int i79 = (i48 >> i49) & ((1 << i3) - 1);
                                int i80 = i3;
                                while (i79 > iArr15[i80]) {
                                    i80++;
                                    while (i49 < i78) {
                                        int read4 = inputStream.read();
                                        if (read4 < 0) {
                                            throw new IOException("unexpected end of stream");
                                        }
                                        i48 = (i48 << 8) | read4;
                                        i49 += 8;
                                        i78 = 1;
                                    }
                                    i49--;
                                    i79 = (i79 << 1) | ((i48 >> i49) & 1);
                                    i78 = 1;
                                }
                                int i81 = iArr16[i79 - iArr14[i80]];
                                i54 = i3;
                                i52 = i81;
                                bArr7 = bArr9;
                                iArr9 = iArr17;
                                i55 = i73;
                            } else {
                                throw new IOException("block overrun");
                            }
                        }
                        c11 = 0;
                    }
                    this.f = i55;
                    this.k = i49;
                    this.j = i48;
                    this.l.f22318a = i40;
                    this.o = 1;
                    return;
                }
                i51++;
                for (int i82 = i39; i49 < i82; i82 = 1) {
                    int read5 = inputStream2.read();
                    if (read5 < 0) {
                        throw new IOException("unexpected end of stream");
                    }
                    i48 = (i48 << 8) | read5;
                    i49 += 8;
                }
                i49--;
                i50 = (i50 << 1) | ((i48 >> i49) & 1);
                bArr6 = bArr8;
                i39 = 1;
            }
        } else {
            this.o = 0;
            throw new IOException("bad block header");
        }
    }

    public final int i() {
        switch (this.o) {
            case 0:
                return -1;
            case 1:
                return j();
            case 2:
                throw new IllegalStateException();
            case 3:
                if (this.t != this.u) {
                    this.o = 2;
                    this.s = 1;
                    return m();
                }
                int i = this.s + 1;
                this.s = i;
                if (i >= 4) {
                    Data data = this.B;
                    byte[] bArr = data.o;
                    int i2 = this.z;
                    char c2 = (char) (bArr[i2] & UByte.MAX_VALUE);
                    this.A = c2;
                    this.z = data.n[i2];
                    int i3 = this.x;
                    if (i3 == 0) {
                        int i4 = this.y;
                        this.x = Rand.f22319a[i4] - 1;
                        int i5 = i4 + 1;
                        this.y = i5;
                        if (i5 == 512) {
                            this.y = 0;
                        }
                    } else {
                        this.x = i3 - 1;
                    }
                    this.w = 0;
                    this.o = 4;
                    if (this.x == 1) {
                        this.A = (char) (c2 ^ 1);
                    }
                    return n();
                }
                this.o = 2;
                return m();
            case 4:
                return n();
            case 5:
                throw new IllegalStateException();
            case 6:
                if (this.t != this.u) {
                    this.s = 1;
                    return k();
                }
                int i6 = this.s + 1;
                this.s = i6;
                if (i6 >= 4) {
                    Data data2 = this.B;
                    byte[] bArr2 = data2.o;
                    int i7 = this.z;
                    this.A = (char) (bArr2[i7] & UByte.MAX_VALUE);
                    this.z = data2.n[i7];
                    this.w = 0;
                    return l();
                }
                return k();
            case 7:
                return l();
            default:
                throw new IllegalStateException();
        }
    }

    public final int j() {
        Data data;
        if (this.o != 0 && (data = this.B) != null) {
            int[] iArr = data.j;
            int i = this.f + 1;
            int[] iArr2 = data.n;
            if (iArr2 == null || iArr2.length < i) {
                iArr2 = new int[i];
                data.n = iArr2;
            }
            byte[] bArr = data.o;
            iArr[0] = 0;
            System.arraycopy(data.e, 0, iArr, 1, 256);
            int i2 = iArr[0];
            for (int i3 = 1; i3 <= 256; i3++) {
                i2 += iArr[i3];
                iArr[i3] = i2;
            }
            int i4 = this.f;
            for (int i5 = 0; i5 <= i4; i5++) {
                int i6 = bArr[i5] & UByte.MAX_VALUE;
                int i7 = iArr[i6];
                iArr[i6] = i7 + 1;
                iArr2[i7] = i5;
            }
            int i8 = this.g;
            if (i8 >= 0 && i8 < iArr2.length) {
                this.z = iArr2[i8];
                this.s = 0;
                this.v = 0;
                this.t = 256;
                if (this.i) {
                    this.x = 0;
                    this.y = 0;
                    return m();
                }
                return k();
            }
            throw new IOException("stream corrupted");
        }
        return -1;
    }

    public final int k() {
        int i = this.v;
        if (i <= this.f) {
            this.u = this.t;
            Data data = this.B;
            byte[] bArr = data.o;
            int i2 = this.z;
            int i3 = bArr[i2] & UByte.MAX_VALUE;
            this.t = i3;
            this.z = data.n[i2];
            this.v = i + 1;
            this.o = 6;
            this.l.a(i3);
            return i3;
        }
        this.o = 5;
        e();
        f();
        return j();
    }

    public final int l() {
        if (this.w < this.A) {
            int i = this.t;
            this.l.a(i);
            this.w++;
            this.o = 7;
            return i;
        }
        this.v++;
        this.s = 0;
        return k();
    }

    public final int m() {
        int i = this.v;
        if (i <= this.f) {
            this.u = this.t;
            Data data = this.B;
            byte[] bArr = data.o;
            int i2 = this.z;
            int i3 = bArr[i2] & UByte.MAX_VALUE;
            this.z = data.n[i2];
            int i4 = this.x;
            int i5 = 0;
            if (i4 == 0) {
                int i6 = this.y;
                this.x = Rand.f22319a[i6] - 1;
                int i7 = i6 + 1;
                this.y = i7;
                if (i7 == 512) {
                    this.y = 0;
                }
            } else {
                this.x = i4 - 1;
            }
            if (this.x == 1) {
                i5 = 1;
            }
            int i8 = i3 ^ i5;
            this.t = i8;
            this.v = i + 1;
            this.o = 3;
            this.l.a(i8);
            return i8;
        }
        e();
        f();
        return j();
    }

    public final int n() {
        if (this.w < this.A) {
            this.l.a(this.t);
            this.w++;
            return this.t;
        }
        this.o = 2;
        this.v++;
        this.s = 0;
        return m();
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.n != null) {
            int i = i();
            a(i < 0 ? -1 : 1);
            return i;
        }
        throw new IOException("stream closed");
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException(a.f(i, "offs(", ") < 0."));
        }
        if (i2 >= 0) {
            int i3 = i + i2;
            if (i3 <= bArr.length) {
                if (this.n == null) {
                    throw new IOException("stream closed");
                }
                if (i2 == 0) {
                    return 0;
                }
                int i4 = i;
                while (i4 < i3) {
                    int i5 = i();
                    if (i5 < 0) {
                        break;
                    }
                    bArr[i4] = (byte) i5;
                    a(1);
                    i4++;
                }
                if (i4 == i) {
                    return -1;
                }
                return i4 - i;
            }
            throw new IndexOutOfBoundsException(a.g(bArr.length, ").", a.u("offs(", i, i2, ") + len(", ") > dest.length(")));
        }
        throw new IndexOutOfBoundsException(a.f(i2, "len(", ") < 0."));
    }
}
