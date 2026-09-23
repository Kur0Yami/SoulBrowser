package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
final class zzhzn extends zzhzq {
    public final Iterator d;
    public ByteBuffer e;
    public int f;
    public int g;
    public int i;
    public long k;
    public long l;
    public long m;
    public int h = Integer.MAX_VALUE;
    public int j = 0;

    public /* synthetic */ zzhzn(int i, ArrayList arrayList) {
        this.f = i;
        this.d = arrayList.iterator();
        if (i == 0) {
            this.e = zzibe.f8916c;
            this.k = 0L;
            this.l = 0L;
            this.m = 0L;
            return;
        }
        F();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long A() {
        return zzhzq.g(J());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int B(int i) {
        if (i >= 0) {
            int c2 = i + c();
            int i2 = this.h;
            if (c2 <= i2) {
                this.h = c2;
                int i3 = this.f + this.g;
                this.f = i3;
                if (i3 > c2) {
                    int i4 = i3 - c2;
                    this.g = i4;
                    this.f = i3 - i4;
                    return i2;
                }
                this.g = 0;
                return i2;
            }
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public final byte C() {
        if (this.m - this.k == 0) {
            E();
        }
        long j = this.k;
        this.k = 1 + j;
        return zzidm.f8954c.h(j);
    }

    public final void D(int i) {
        if (i >= 0) {
            if (i <= ((this.f - this.j) - this.k) + this.l) {
                while (i > 0) {
                    if (this.m - this.k == 0) {
                        E();
                    }
                    int min = Math.min(i, (int) (this.m - this.k));
                    i -= min;
                    this.k += min;
                }
                return;
            }
        }
        if (i < 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final void E() {
        if (this.d.hasNext()) {
            F();
            return;
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final void F() {
        ByteBuffer byteBuffer = (ByteBuffer) this.d.next();
        this.e = byteBuffer;
        this.j += (int) (this.k - this.l);
        long position = byteBuffer.position();
        this.k = position;
        this.l = position;
        this.m = this.e.limit();
        long n = zzidm.n(this.e);
        this.k += n;
        this.l += n;
        this.m += n;
    }

    public final void G(byte[] bArr, int i) {
        if (i <= H()) {
            int i2 = i;
            while (i2 > 0) {
                if (this.m - this.k == 0) {
                    E();
                }
                int min = Math.min(i2, (int) (this.m - this.k));
                long j = min;
                zzidm.f8954c.i(this.k, bArr, i - i2, j);
                i2 -= min;
                this.k += j;
            }
            return;
        }
        if (i <= 0) {
        } else {
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final int H() {
        return (int) (((this.f - this.j) - this.k) + this.l);
    }

    public final int I() {
        int i;
        long j = this.k;
        if (this.m != j) {
            long j2 = j + 1;
            zzidl zzidlVar = zzidm.f8954c;
            byte h = zzidlVar.h(j);
            if (h >= 0) {
                this.k++;
                return h;
            }
            if (this.m - this.k >= 10) {
                long j3 = 2 + j;
                int h2 = (zzidlVar.h(j2) << 7) ^ h;
                if (h2 < 0) {
                    i = h2 ^ (-128);
                } else {
                    long j4 = 3 + j;
                    int h3 = (zzidlVar.h(j3) << 14) ^ h2;
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
                                            j4 = 9 + j;
                                            if (zzidlVar.h(j5) < 0) {
                                                long j6 = j + 10;
                                                if (zzidlVar.h(j4) >= 0) {
                                                    i = i2;
                                                    j3 = j6;
                                                }
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
                this.k = j3;
                return i;
            }
        }
        return (int) K();
    }

    public final long J() {
        long j;
        long j2;
        long j3;
        long j4 = this.k;
        if (this.m != j4) {
            long j5 = j4 + 1;
            zzidl zzidlVar = zzidm.f8954c;
            byte h = zzidlVar.h(j4);
            if (h >= 0) {
                this.k++;
                return h;
            }
            if (this.m - this.k >= 10) {
                long j6 = 2 + j4;
                int h2 = (zzidlVar.h(j5) << 7) ^ h;
                if (h2 < 0) {
                    j = h2 ^ (-128);
                } else {
                    long j7 = 3 + j4;
                    int h3 = (zzidlVar.h(j6) << 14) ^ h2;
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
                            long h5 = (zzidlVar.h(j8) << 28) ^ h4;
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
                                            j7 = 9 + j4;
                                            long h7 = (h6 ^ (zzidlVar.h(j9) << 56)) ^ 71499008037633920L;
                                            if (h7 < 0) {
                                                long j10 = j4 + 10;
                                                if (zzidlVar.h(j7) >= 0) {
                                                    j6 = j10;
                                                    j = h7;
                                                }
                                            } else {
                                                j = h7;
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
                this.k = j6;
                return j;
            }
        }
        return K();
    }

    public final long K() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & ByteCompanionObject.MAX_VALUE) << i;
            if ((C() & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw new IOException("CodedInputStream encountered a malformed varint.");
    }

    public final int L() {
        long j = this.m;
        long j2 = this.k;
        if (j - j2 >= 4) {
            this.k = 4 + j2;
            zzidl zzidlVar = zzidm.f8954c;
            int h = zzidlVar.h(j2) & UByte.MAX_VALUE;
            int h2 = (zzidlVar.h(1 + j2) & UByte.MAX_VALUE) << 8;
            return ((zzidlVar.h(j2 + 3) & UByte.MAX_VALUE) << 24) | h | h2 | ((zzidlVar.h(2 + j2) & UByte.MAX_VALUE) << 16);
        }
        int C = C() & UByte.MAX_VALUE;
        int C2 = (C() & UByte.MAX_VALUE) << 8;
        return C | C2 | ((C() & UByte.MAX_VALUE) << 16) | ((C() & UByte.MAX_VALUE) << 24);
    }

    public final long M() {
        long j = this.m;
        long j2 = this.k;
        if (j - j2 >= 8) {
            this.k = 8 + j2;
            zzidl zzidlVar = zzidm.f8954c;
            long h = zzidlVar.h(j2) & 255;
            long h2 = (zzidlVar.h(j2 + 1) & 255) << 8;
            long h3 = (zzidlVar.h(j2 + 2) & 255) << 16;
            long h4 = (zzidlVar.h(3 + j2) & 255) << 24;
            long h5 = (zzidlVar.h(j2 + 4) & 255) << 32;
            return ((zzidlVar.h(j2 + 7) & 255) << 56) | h | h2 | h3 | h4 | h5 | ((zzidlVar.h(j2 + 5) & 255) << 40) | ((zzidlVar.h(j2 + 6) & 255) << 48);
        }
        return ((C() & 255) << 56) | (C() & 255) | ((C() & 255) << 8) | ((C() & 255) << 16) | ((C() & 255) << 24) | ((C() & 255) << 32) | ((C() & 255) << 40) | ((C() & 255) << 48);
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final void a(int i) {
        this.h = i;
        int i2 = this.f + this.g;
        this.f = i2;
        if (i2 > i) {
            int i3 = i2 - i;
            this.g = i3;
            this.f = i2 - i3;
            return;
        }
        this.g = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final boolean b() {
        return (((long) this.j) + this.k) - this.l == ((long) this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int c() {
        return (int) ((this.j + this.k) - this.l);
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int h() {
        if (b()) {
            this.i = 0;
            return 0;
        }
        int I = I();
        this.i = I;
        if ((I >>> 3) != 0) {
            return I;
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
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                D(4);
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
                D(I());
                return true;
            }
            D(8);
            return true;
        }
        for (int i3 = 0; i3 < 10; i3++) {
            if (C() >= 0) {
                return true;
            }
        }
        throw new IOException("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final double k() {
        return Double.longBitsToDouble(M());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final float l() {
        return Float.intBitsToFloat(L());
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long m() {
        return J();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long n() {
        return J();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int o() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long p() {
        return M();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int q() {
        return L();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final boolean r() {
        if (J() != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final String s() {
        int I = I();
        if (I > 0) {
            long j = this.m;
            long j2 = this.k;
            long j3 = I;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[I];
                zzidm.f8954c.i(j2, bArr, 0L, j3);
                String str = new String(bArr, zzibe.f8915a);
                this.k += j3;
                return str;
            }
        }
        if (I > 0 && I <= H()) {
            byte[] bArr2 = new byte[I];
            G(bArr2, I);
            return new String(bArr2, zzibe.f8915a);
        }
        if (I == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (I < 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final String t() {
        int I = I();
        if (I > 0) {
            long j = this.m;
            long j2 = this.k;
            long j3 = I;
            if (j3 <= j - j2) {
                String d = zzidr.d(this.e, (int) (j2 - this.l), I);
                this.k += j3;
                return d;
            }
        }
        if (I >= 0 && I <= H()) {
            byte[] bArr = new byte[I];
            G(bArr, I);
            return zzidr.f8955a.b(bArr, 0, I);
        }
        if (I == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (I <= 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final zzhzl u() {
        int I = I();
        if (I > 0) {
            long j = this.m;
            long j2 = this.k;
            long j3 = I;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[I];
                zzidm.f8954c.i(j2, bArr, 0L, j3);
                this.k += j3;
                zzhzl zzhzlVar = zzhzl.f;
                return new zzhzj(bArr);
            }
        }
        if (I > 0 && I <= H()) {
            byte[] bArr2 = new byte[I];
            G(bArr2, I);
            zzhzl zzhzlVar2 = zzhzl.f;
            return new zzhzj(bArr2);
        }
        if (I == 0) {
            return zzhzl.f;
        }
        if (I < 0) {
            throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int v() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int w() {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int x() {
        return L();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final long y() {
        return M();
    }

    @Override // com.google.android.gms.internal.ads.zzhzq
    public final int z() {
        return zzhzq.f(I());
    }
}
