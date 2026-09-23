package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
final class zzhzp extends zzhzq {
    public long d;
    public long e;
    public int f;
    public int g;
    public int h;

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long A() {
        return zzhzq.g(E());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int B(int i) {
        if (i >= 0) {
            int i2 = i + ((int) this.e);
            int i3 = this.h;
            if (i2 <= i3) {
                this.h = i2;
                long j = this.d + this.f;
                this.d = j;
                int i4 = (int) j;
                if (i4 > i2) {
                    int i5 = i4 - i2;
                    this.f = i5;
                    this.d = j - i5;
                    return i3;
                }
                this.f = 0;
                return i3;
            }
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public final void C(int i) {
        if (i >= 0) {
            long j = this.d;
            long j2 = this.e;
            if (i <= ((int) (j - j2))) {
                this.e = j2 + i;
                return;
            }
        }
        if (i < 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final int D() {
        int i;
        long j = this.e;
        if (this.d != j) {
            long j2 = 1 + j;
            zzidl zzidlVar = zzidm.f8954c;
            byte h = zzidlVar.h(j);
            if (h >= 0) {
                this.e = j2;
                return h;
            }
            if (this.d - j2 >= 9) {
                long j3 = 2 + j;
                int h2 = (zzidlVar.h(j2) << 7) ^ h;
                if (h2 < 0) {
                    i = h2 ^ (-128);
                } else {
                    long j4 = 3 + j;
                    int h3 = h2 ^ (zzidlVar.h(j3) << 14);
                    if (h3 >= 0) {
                        i = h3 ^ 16256;
                    } else {
                        long j5 = 4 + j;
                        int h4 = h3 ^ (zzidlVar.h(j4) << 21);
                        if (h4 < 0) {
                            i = (-2080896) ^ h4;
                        } else {
                            j4 = 5 + j;
                            byte h5 = zzidlVar.h(j5);
                            int i2 = (h4 ^ (h5 << 28)) ^ 266354560;
                            if (h5 < 0) {
                                j5 = 6 + j;
                                if (zzidlVar.h(j4) < 0) {
                                    j4 = 7 + j;
                                    if (zzidlVar.h(j5) < 0) {
                                        j5 = 8 + j;
                                        if (zzidlVar.h(j4) < 0) {
                                            long j6 = 9 + j;
                                            if (zzidlVar.h(j5) < 0) {
                                                long j7 = j + 10;
                                                if (zzidlVar.h(j6) >= 0) {
                                                    j3 = j7;
                                                    i = i2;
                                                }
                                            } else {
                                                i = i2;
                                                j3 = j6;
                                            }
                                        }
                                    }
                                }
                                i = i2;
                            }
                            i = i2;
                        }
                        j3 = j5;
                    }
                    j3 = j4;
                }
                this.e = j3;
                return i;
            }
        }
        return (int) F();
    }

    public final long E() {
        long j;
        long j2;
        long j3;
        long j4 = this.e;
        if (this.d != j4) {
            long j5 = 1 + j4;
            zzidl zzidlVar = zzidm.f8954c;
            byte h = zzidlVar.h(j4);
            if (h >= 0) {
                this.e = j5;
                return h;
            }
            if (this.d - j5 >= 9) {
                long j6 = 2 + j4;
                int h2 = (zzidlVar.h(j5) << 7) ^ h;
                if (h2 < 0) {
                    j = h2 ^ (-128);
                } else {
                    long j7 = 3 + j4;
                    int h3 = h2 ^ (zzidlVar.h(j6) << 14);
                    if (h3 >= 0) {
                        j = h3 ^ 16256;
                    } else {
                        long j8 = 4 + j4;
                        int h4 = h3 ^ (zzidlVar.h(j7) << 21);
                        if (h4 < 0) {
                            j = (-2080896) ^ h4;
                            j6 = j8;
                        } else {
                            j7 = 5 + j4;
                            long h5 = h4 ^ (zzidlVar.h(j8) << 28);
                            if (h5 >= 0) {
                                j3 = 266354560;
                            } else {
                                long j9 = 6 + j4;
                                long h6 = h5 ^ (zzidlVar.h(j7) << 35);
                                if (h6 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    j7 = 7 + j4;
                                    h5 = h6 ^ (zzidlVar.h(j9) << 42);
                                    if (h5 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        j9 = 8 + j4;
                                        h6 = h5 ^ (zzidlVar.h(j7) << 49);
                                        if (h6 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            long j10 = 9 + j4;
                                            long h7 = (h6 ^ (zzidlVar.h(j9) << 56)) ^ 71499008037633920L;
                                            if (h7 < 0) {
                                                long j11 = j4 + 10;
                                                if (zzidlVar.h(j10) >= 0) {
                                                    j6 = j11;
                                                    j = h7;
                                                }
                                            } else {
                                                j = h7;
                                                j6 = j10;
                                            }
                                        }
                                    }
                                }
                                j = j2 ^ h6;
                                j6 = j9;
                            }
                            j = j3 ^ h5;
                        }
                    }
                    j6 = j7;
                }
                this.e = j6;
                return j;
            }
        }
        return F();
    }

    public final long F() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            long j2 = this.e;
            if (j2 != this.d) {
                this.e = 1 + j2;
                j |= (r3 & ByteCompanionObject.MAX_VALUE) << i;
                if ((zzidm.f8954c.h(j2) & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j;
                }
            } else {
                throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        }
        throw new IOException("CodedInputStream encountered a malformed varint.");
    }

    public final int G() {
        long j = this.e;
        if (this.d - j >= 4) {
            this.e = 4 + j;
            zzidl zzidlVar = zzidm.f8954c;
            int h = zzidlVar.h(j) & UByte.MAX_VALUE;
            int h2 = zzidlVar.h(1 + j) & UByte.MAX_VALUE;
            int h3 = zzidlVar.h(2 + j) & UByte.MAX_VALUE;
            return ((zzidlVar.h(j + 3) & UByte.MAX_VALUE) << 24) | (h2 << 8) | h | (h3 << 16);
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final long H() {
        long j = this.e;
        if (this.d - j >= 8) {
            this.e = 8 + j;
            zzidl zzidlVar = zzidm.f8954c;
            long h = zzidlVar.h(j);
            long h2 = zzidlVar.h(1 + j);
            long h3 = zzidlVar.h(2 + j);
            long h4 = zzidlVar.h(3 + j);
            long h5 = zzidlVar.h(4 + j);
            return ((zzidlVar.h(j + 7) & 255) << 56) | ((zzidlVar.h(j + 6) & 255) << 48) | (h & 255) | ((h2 & 255) << 8) | ((h3 & 255) << 16) | ((h4 & 255) << 24) | ((h5 & 255) << 32) | ((zzidlVar.h(5 + j) & 255) << 40);
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final void a(int i) {
        this.h = i;
        long j = this.d + this.f;
        this.d = j;
        int i2 = (int) j;
        if (i2 > i) {
            int i3 = i2 - i;
            this.f = i3;
            this.d = j - i3;
            return;
        }
        this.f = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final boolean b() {
        return this.e == this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int c() {
        return (int) this.e;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int h() {
        if (b()) {
            this.g = 0;
            return 0;
        }
        int D = D();
        this.g = D;
        if ((D >>> 3) != 0) {
            return D;
        }
        throw new IOException("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final void i(int i) {
        if (this.g == i) {
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
                C(D());
                return true;
            }
            C(8);
            return true;
        }
        if (((int) (this.d - this.e)) >= 10) {
            while (i3 < 10) {
                long j = this.e;
                this.e = j + 1;
                if (zzidm.f8954c.h(j) < 0) {
                    i3++;
                }
            }
            throw new IOException("CodedInputStream encountered a malformed varint.");
        }
        while (i3 < 10) {
            long j2 = this.e;
            if (j2 != this.d) {
                this.e = j2 + 1;
                if (zzidm.f8954c.h(j2) < 0) {
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
        return Double.longBitsToDouble(H());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final float l() {
        return Float.intBitsToFloat(G());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long m() {
        return E();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long n() {
        return E();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int o() {
        return D();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long p() {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int q() {
        return G();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final boolean r() {
        if (E() != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final String s() {
        int D = D();
        if (D > 0) {
            long j = this.d;
            long j2 = this.e;
            if (D <= ((int) (j - j2))) {
                byte[] bArr = new byte[D];
                long j3 = D;
                zzidm.f8954c.i(j2, bArr, 0L, j3);
                String str = new String(bArr, zzibe.f8915a);
                this.e += j3;
                return str;
            }
        }
        if (D == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (D < 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final String t() {
        int D = D();
        if (D > 0) {
            long j = this.d;
            long j2 = this.e;
            if (D <= ((int) (j - j2))) {
                zzidr.d(null, (int) j2, D);
                throw null;
            }
        }
        if (D == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (D <= 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final zzhzl u() {
        int D = D();
        if (D > 0) {
            long j = this.d;
            long j2 = this.e;
            if (D <= ((int) (j - j2))) {
                byte[] bArr = new byte[D];
                long j3 = D;
                zzidm.f8954c.i(j2, bArr, 0L, j3);
                this.e += j3;
                zzhzl zzhzlVar = zzhzl.f;
                return new zzhzj(bArr);
            }
        }
        if (D == 0) {
            return zzhzl.f;
        }
        if (D < 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int v() {
        return D();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int w() {
        return D();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int x() {
        return G();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long y() {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int z() {
        return zzhzq.f(D());
    }
}
