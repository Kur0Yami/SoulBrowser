package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import kotlin.UByte;
import kotlin.io.ConstantsKt;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
final class zzhzo extends zzhzq {
    public final InputStream d;
    public final byte[] e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k = Integer.MAX_VALUE;

    public /* synthetic */ zzhzo(InputStream inputStream) {
        Charset charset = zzibe.f8915a;
        this.d = inputStream;
        this.e = new byte[ConstantsKt.DEFAULT_BLOCK_SIZE];
        this.f = 0;
        this.h = 0;
        this.j = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long A() {
        return zzhzq.g(K());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int B(int i) {
        if (i >= 0) {
            int i2 = this.j + this.h + i;
            if (i2 >= 0) {
                int i3 = this.k;
                if (i2 <= i3) {
                    this.k = i2;
                    D();
                    return i3;
                }
                throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            throw new IOException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public final void C(int i) {
        InputStream inputStream = this.d;
        int i2 = this.f;
        int i3 = this.h;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.h = i3 + i;
            return;
        }
        if (i >= 0) {
            int i5 = this.j;
            int i6 = i5 + i3;
            int i7 = this.k;
            if (i6 + i <= i7) {
                this.j = i6;
                this.f = 0;
                this.h = 0;
                while (i4 < i) {
                    long j = i - i4;
                    try {
                        try {
                            long skip = inputStream.skip(j);
                            if (skip >= 0 && skip <= j) {
                                if (skip == 0) {
                                    break;
                                } else {
                                    i4 += (int) skip;
                                }
                            } else {
                                String valueOf = String.valueOf(inputStream.getClass());
                                StringBuilder sb = new StringBuilder(valueOf.length() + 31 + String.valueOf(skip).length() + 41);
                                sb.append(valueOf);
                                sb.append("#skip returned invalid result: ");
                                sb.append(skip);
                                sb.append("\nThe InputStream implementation is buggy.");
                                throw new IllegalStateException(sb.toString());
                            }
                        } catch (zzibg e) {
                            e.f8917c = true;
                            throw e;
                        }
                    } catch (Throwable th) {
                        this.j += i4;
                        D();
                        throw th;
                    }
                }
                this.j += i4;
                D();
                if (i4 < i) {
                    int i8 = this.f;
                    int i9 = i8 - this.h;
                    this.h = i8;
                    E(1);
                    while (true) {
                        int i10 = i - i9;
                        int i11 = this.f;
                        if (i10 > i11) {
                            i9 += i11;
                            this.h = i11;
                            E(1);
                        } else {
                            this.h = i10;
                            return;
                        }
                    }
                }
            } else {
                C((i7 - i5) - i3);
                throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        } else {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
    }

    public final void D() {
        int i = this.f + this.g;
        this.f = i;
        int i2 = this.j + i;
        int i3 = this.k;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.g = i4;
            this.f = i - i4;
            return;
        }
        this.g = 0;
    }

    public final void E(int i) {
        if (!F(i)) {
            if (i > (Integer.MAX_VALUE - this.j) - this.h) {
                throw new IOException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            }
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final boolean F(int i) {
        InputStream inputStream = this.d;
        int i2 = this.h;
        int i3 = i2 + i;
        int i4 = this.f;
        if (i3 > i4) {
            int i5 = this.j;
            if (i > (Integer.MAX_VALUE - i5) - i2 || i5 + i2 + i > this.k) {
                return false;
            }
            byte[] bArr = this.e;
            if (i2 > 0) {
                if (i4 > i2) {
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                i5 = this.j + i2;
                this.j = i5;
                i4 = this.f - i2;
                this.f = i4;
                this.h = 0;
            }
            try {
                int read = inputStream.read(bArr, i4, Math.min(4096 - i4, (Integer.MAX_VALUE - i5) - i4));
                if (read != 0 && read >= -1 && read <= 4096) {
                    if (read <= 0) {
                        return false;
                    }
                    this.f += read;
                    D();
                    if (this.f < i && !F(i)) {
                        return false;
                    }
                    return true;
                }
                String valueOf = String.valueOf(inputStream.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(read).length() + valueOf.length() + 39 + 41);
                sb.append(valueOf);
                sb.append("#read(byte[]) returned invalid result: ");
                sb.append(read);
                sb.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb.toString());
            } catch (zzibg e) {
                e.f8917c = true;
                throw e;
            }
        }
        throw new IllegalStateException(androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(i).length() + 66), "refillBuffer() called when ", i, " bytes were already available in buffer"));
    }

    public final byte[] G(int i) {
        byte[] H = H(i);
        if (H != null) {
            return H;
        }
        int i2 = this.h;
        int i3 = this.f;
        int i4 = i3 - i2;
        this.j += i3;
        this.h = 0;
        this.f = 0;
        ArrayList I = I(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.e, i2, bArr, 0, i4);
        int size = I.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = I.get(i5);
            i5++;
            byte[] bArr2 = (byte[]) obj;
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    public final byte[] H(int i) {
        if (i == 0) {
            return zzibe.b;
        }
        int i2 = this.j;
        int i3 = this.h;
        int i4 = i2 + i3 + i;
        if ((-2147483647) + i4 <= 0) {
            int i5 = this.k;
            if (i4 <= i5) {
                int i6 = this.f - i3;
                int i7 = i - i6;
                InputStream inputStream = this.d;
                if (i7 >= 4096) {
                    try {
                        if (i7 > inputStream.available()) {
                            return null;
                        }
                    } catch (zzibg e) {
                        e.f8917c = true;
                        throw e;
                    }
                }
                byte[] bArr = new byte[i];
                System.arraycopy(this.e, this.h, bArr, 0, i6);
                this.j += this.f;
                this.h = 0;
                this.f = 0;
                while (i6 < i) {
                    try {
                        int read = inputStream.read(bArr, i6, i - i6);
                        if (read != -1) {
                            this.j += read;
                            i6 += read;
                        } else {
                            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                        }
                    } catch (zzibg e2) {
                        e2.f8917c = true;
                        throw e2;
                    }
                }
                return bArr;
            }
            C((i5 - i2) - i3);
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new IOException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
    }

    public final ArrayList I(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, ConstantsKt.DEFAULT_BLOCK_SIZE);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.d.read(bArr, i2, min - i2);
                if (read != -1) {
                    this.j += read;
                    i2 += read;
                } else {
                    throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final int J() {
        int i;
        int i2 = this.h;
        int i3 = this.f;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.e;
            byte b = bArr[i2];
            if (b >= 0) {
                this.h = i4;
                return b;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b;
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << 21);
                        if (i10 < 0) {
                            i = (-2080896) ^ i10;
                        } else {
                            i7 = i2 + 5;
                            byte b2 = bArr[i9];
                            int i11 = (i10 ^ (b2 << 28)) ^ 266354560;
                            if (b2 < 0) {
                                i9 = i2 + 6;
                                if (bArr[i7] < 0) {
                                    i7 = i2 + 7;
                                    if (bArr[i9] < 0) {
                                        i9 = i2 + 8;
                                        if (bArr[i7] < 0) {
                                            i7 = i2 + 9;
                                            if (bArr[i9] < 0) {
                                                int i12 = i2 + 10;
                                                if (bArr[i7] >= 0) {
                                                    i5 = i12;
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i11;
                            }
                            i = i11;
                        }
                        i5 = i9;
                    }
                    i5 = i7;
                }
                this.h = i5;
                return i;
            }
        }
        return (int) L();
    }

    public final long K() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.h;
        int i2 = this.f;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.e;
            byte b = bArr[i];
            if (b >= 0) {
                this.h = i3;
                return b;
            }
            if (i2 - i3 >= 9) {
                int i4 = i + 2;
                int i5 = (bArr[i3] << 7) ^ b;
                if (i5 < 0) {
                    j2 = i5 ^ (-128);
                } else {
                    int i6 = i + 3;
                    int i7 = (bArr[i4] << 14) ^ i5;
                    if (i7 >= 0) {
                        j2 = i7 ^ 16256;
                    } else {
                        int i8 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << 21);
                        if (i9 < 0) {
                            long j5 = (-2080896) ^ i9;
                            i4 = i8;
                            j2 = j5;
                        } else {
                            i6 = i + 5;
                            long j6 = i9 ^ (bArr[i8] << 28);
                            if (j6 >= 0) {
                                j4 = 266354560;
                            } else {
                                int i10 = i + 6;
                                long j7 = j6 ^ (bArr[i6] << 35);
                                if (j7 < 0) {
                                    j3 = -34093383808L;
                                } else {
                                    i6 = i + 7;
                                    j6 = j7 ^ (bArr[i10] << 42);
                                    if (j6 >= 0) {
                                        j4 = 4363953127296L;
                                    } else {
                                        i10 = i + 8;
                                        j7 = j6 ^ (bArr[i6] << 49);
                                        if (j7 < 0) {
                                            j3 = -558586000294016L;
                                        } else {
                                            i6 = i + 9;
                                            j = (j7 ^ (bArr[i10] << 56)) ^ 71499008037633920L;
                                            if (j < 0) {
                                                int i11 = i + 10;
                                                if (bArr[i6] >= 0) {
                                                    j2 = j;
                                                    i4 = i11;
                                                }
                                            }
                                            j2 = j;
                                        }
                                    }
                                }
                                j2 = j7 ^ j3;
                                i4 = i10;
                            }
                            j = j6 ^ j4;
                            j2 = j;
                        }
                    }
                    i4 = i6;
                }
                this.h = i4;
                return j2;
            }
        }
        return L();
    }

    public final long L() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.h == this.f) {
                E(1);
            }
            int i2 = this.h;
            this.h = i2 + 1;
            j |= (r3 & ByteCompanionObject.MAX_VALUE) << i;
            if ((this.e[i2] & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw new IOException("CodedInputStream encountered a malformed varint.");
    }

    public final int M() {
        int i = this.h;
        if (this.f - i < 4) {
            E(4);
            i = this.h;
        }
        this.h = i + 4;
        byte[] bArr = this.e;
        int i2 = bArr[i] & UByte.MAX_VALUE;
        int i3 = bArr[i + 1] & UByte.MAX_VALUE;
        int i4 = bArr[i + 2] & UByte.MAX_VALUE;
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public final long N() {
        int i = this.h;
        if (this.f - i < 8) {
            E(8);
            i = this.h;
        }
        this.h = i + 8;
        byte[] bArr = this.e;
        long j = bArr[i];
        long j2 = bArr[i + 2];
        long j3 = bArr[i + 3];
        return ((bArr[i + 6] & 255) << 48) | (j & 255) | ((bArr[i + 1] & 255) << 8) | ((j2 & 255) << 16) | ((j3 & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 7] & 255) << 56);
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final void a(int i) {
        this.k = i;
        D();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final boolean b() {
        if (this.h == this.f && !F(1)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int c() {
        return this.j + this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int h() {
        if (b()) {
            this.i = 0;
            return 0;
        }
        int J = J();
        this.i = J;
        if ((J >>> 3) != 0) {
            return J;
        }
        throw new IOException("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final void i(int i) {
        if (this.i == i) {
        } else {
            throw new IOException("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final boolean j(int i) {
        int i2 = i & 7;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                C(4);
                                return true;
                            }
                            throw new zzibf();
                        }
                        if (this.b == 0) {
                            i(0);
                        }
                        return false;
                    }
                    e();
                    i(((i >>> 3) << 3) | 4);
                    return true;
                }
                C(J());
                return true;
            }
            C(8);
            return true;
        }
        int i4 = this.f - this.h;
        byte[] bArr = this.e;
        if (i4 >= 10) {
            while (i3 < 10) {
                int i5 = this.h;
                this.h = i5 + 1;
                if (bArr[i5] < 0) {
                    i3++;
                }
            }
            throw new IOException("CodedInputStream encountered a malformed varint.");
        }
        while (i3 < 10) {
            if (this.h == this.f) {
                E(1);
            }
            int i6 = this.h;
            this.h = i6 + 1;
            if (bArr[i6] < 0) {
                i3++;
            }
        }
        throw new IOException("CodedInputStream encountered a malformed varint.");
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final double k() {
        return Double.longBitsToDouble(N());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final float l() {
        return Float.intBitsToFloat(M());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long m() {
        return K();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long n() {
        return K();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int o() {
        return J();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long p() {
        return N();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int q() {
        return M();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final boolean r() {
        if (K() != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final String s() {
        int J = J();
        byte[] bArr = this.e;
        if (J > 0) {
            int i = this.f;
            int i2 = this.h;
            if (J <= i - i2) {
                String str = new String(bArr, i2, J, zzibe.f8915a);
                this.h += J;
                return str;
            }
        }
        if (J == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (J >= 0) {
            if (J <= this.f) {
                E(J);
                String str2 = new String(bArr, this.h, J, zzibe.f8915a);
                this.h += J;
                return str2;
            }
            return new String(G(J), zzibe.f8915a);
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final String t() {
        int J = J();
        int i = this.h;
        int i2 = this.f;
        int i3 = i2 - i;
        byte[] bArr = this.e;
        if (J <= i3 && J > 0) {
            this.h = i + J;
        } else {
            if (J == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (J >= 0) {
                i = 0;
                if (J <= i2) {
                    E(J);
                    this.h = J;
                } else {
                    bArr = G(J);
                }
            } else {
                throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
        }
        return zzidr.f8955a.b(bArr, i, J);
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final zzhzl u() {
        int J = J();
        int i = this.f;
        int i2 = this.h;
        int i3 = i - i2;
        byte[] bArr = this.e;
        if (J <= i3 && J > 0) {
            zzhzl C = zzhzl.C(bArr, i2, J);
            this.h += J;
            return C;
        }
        if (J == 0) {
            return zzhzl.f;
        }
        if (J >= 0) {
            byte[] H = H(J);
            if (H != null) {
                return zzhzl.C(H, 0, H.length);
            }
            int i4 = this.h;
            int i5 = this.f;
            int i6 = i5 - i4;
            this.j += i5;
            this.h = 0;
            this.f = 0;
            ArrayList I = I(J - i6);
            byte[] bArr2 = new byte[J];
            System.arraycopy(bArr, i4, bArr2, 0, i6);
            int size = I.size();
            int i7 = 0;
            while (i7 < size) {
                Object obj = I.get(i7);
                i7++;
                byte[] bArr3 = (byte[]) obj;
                int length = bArr3.length;
                System.arraycopy(bArr3, 0, bArr2, i6, length);
                i6 += length;
            }
            zzhzl zzhzlVar = zzhzl.f;
            try {
                return new zzhzj(bArr2);
            } catch (zzibg e) {
                throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
            }
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int v() {
        return J();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int w() {
        return J();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int x() {
        return M();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long y() {
        return N();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int z() {
        return zzhzq.f(J());
    }
}
