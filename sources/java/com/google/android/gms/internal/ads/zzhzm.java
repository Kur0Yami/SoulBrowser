package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhzm extends zzhzq {
    public final byte[] d;
    public int e;
    public int f;
    public int g;
    public final int h;
    public int i;
    public int j = Integer.MAX_VALUE;

    public /* synthetic */ zzhzm(byte[] bArr, int i, int i2) {
        this.d = bArr;
        this.e = i2 + i;
        this.g = i;
        this.h = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long A() {
        return zzhzq.g(F());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int B(int i) {
        if (i >= 0) {
            int i2 = (this.g - this.h) + i;
            if (i2 >= 0) {
                int i3 = this.j;
                if (i2 <= i3) {
                    this.j = i2;
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
        if (i >= 0) {
            int i2 = this.e;
            int i3 = this.g;
            if (i <= i2 - i3) {
                this.g = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final void D() {
        int i = this.e + this.f;
        this.e = i;
        int i2 = i - this.h;
        int i3 = this.j;
        if (i2 <= i3) {
            this.f = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f = i4;
        this.e = i - i4;
    }

    public final int E() {
        int i;
        int i2 = this.g;
        int i3 = this.e;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.d;
            byte b = bArr[i2];
            if (b >= 0) {
                this.g = i4;
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
                this.g = i5;
                return i;
            }
        }
        return (int) G();
    }

    public final long F() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.g;
        int i2 = this.e;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.d;
            byte b = bArr[i];
            if (b >= 0) {
                this.g = i3;
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
                this.g = i4;
                return j2;
            }
        }
        return G();
    }

    public final long G() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.g;
            if (i2 != this.e) {
                this.g = i2 + 1;
                j |= (r3 & ByteCompanionObject.MAX_VALUE) << i;
                if ((this.d[i2] & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j;
                }
            } else {
                throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        }
        throw new IOException("CodedInputStream encountered a malformed varint.");
    }

    public final int H() {
        int i = this.g;
        if (this.e - i >= 4) {
            this.g = i + 4;
            byte[] bArr = this.d;
            int i2 = bArr[i] & UByte.MAX_VALUE;
            int i3 = bArr[i + 1] & UByte.MAX_VALUE;
            int i4 = bArr[i + 2] & UByte.MAX_VALUE;
            return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16);
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final long I() {
        int i = this.g;
        if (this.e - i >= 8) {
            this.g = i + 8;
            byte[] bArr = this.d;
            long j = bArr[i];
            long j2 = bArr[i + 2];
            long j3 = bArr[i + 3];
            return ((bArr[i + 6] & 255) << 48) | (j & 255) | ((bArr[i + 1] & 255) << 8) | ((j2 & 255) << 16) | ((j3 & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 7] & 255) << 56);
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final void a(int i) {
        this.j = i;
        D();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final boolean b() {
        return this.g == this.e;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int c() {
        return this.g - this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int h() {
        if (b()) {
            this.i = 0;
            return 0;
        }
        int E = E();
        this.i = E;
        if ((E >>> 3) != 0) {
            return E;
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
                C(E());
                return true;
            }
            C(8);
            return true;
        }
        int i4 = this.e - this.g;
        byte[] bArr = this.d;
        if (i4 >= 10) {
            while (i3 < 10) {
                int i5 = this.g;
                this.g = i5 + 1;
                if (bArr[i5] < 0) {
                    i3++;
                }
            }
            throw new IOException("CodedInputStream encountered a malformed varint.");
        }
        while (i3 < 10) {
            int i6 = this.g;
            if (i6 != this.e) {
                this.g = i6 + 1;
                if (bArr[i6] < 0) {
                    i3++;
                }
            } else {
                throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        }
        throw new IOException("CodedInputStream encountered a malformed varint.");
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final double k() {
        return Double.longBitsToDouble(I());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final float l() {
        return Float.intBitsToFloat(H());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long m() {
        return F();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long n() {
        return F();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int o() {
        return E();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long p() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int q() {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final boolean r() {
        if (F() != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final String s() {
        int E = E();
        if (E > 0) {
            int i = this.e;
            int i2 = this.g;
            if (E <= i - i2) {
                String str = new String(this.d, i2, E, zzibe.f8915a);
                this.g += E;
                return str;
            }
        }
        if (E == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (E < 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final String t() {
        int E = E();
        if (E > 0) {
            int i = this.e;
            int i2 = this.g;
            if (E <= i - i2) {
                String b = zzidr.f8955a.b(this.d, i2, E);
                this.g += E;
                return b;
            }
        }
        if (E == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (E <= 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final zzhzl u() {
        int E = E();
        byte[] bArr = this.d;
        if (E > 0) {
            int i = this.e;
            int i2 = this.g;
            if (E <= i - i2) {
                zzhzl C = zzhzl.C(bArr, i2, E);
                this.g += E;
                return C;
            }
        }
        if (E == 0) {
            return zzhzl.f;
        }
        if (E > 0) {
            int i3 = this.e;
            int i4 = this.g;
            if (E <= i3 - i4) {
                int i5 = E + i4;
                this.g = i5;
                byte[] copyOfRange = Arrays.copyOfRange(bArr, i4, i5);
                zzhzl zzhzlVar = zzhzl.f;
                return new zzhzj(copyOfRange);
            }
        }
        if (E <= 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int v() {
        return E();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int w() {
        return E();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int x() {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long y() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int z() {
        return zzhzq.f(E());
    }
}
