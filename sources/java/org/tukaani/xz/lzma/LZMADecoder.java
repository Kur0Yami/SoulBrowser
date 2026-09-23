package org.tukaani.xz.lzma;

import org.tukaani.xz.lz.LZDecoder;
import org.tukaani.xz.lzma.LZMACoder;
import org.tukaani.xz.rangecoder.RangeCoder;
import org.tukaani.xz.rangecoder.RangeDecoder;

/* loaded from: classes4.dex */
public final class LZMADecoder extends LZMACoder {
    public final LZDecoder m;
    public final RangeDecoder n;
    public final LiteralDecoder o;
    public final LengthDecoder p;
    public final LengthDecoder q;

    /* loaded from: classes4.dex */
    public class LengthDecoder extends LZMACoder.LengthCoder {
        public LengthDecoder() {
        }

        public final int b(int i) {
            LZMADecoder lZMADecoder = LZMADecoder.this;
            RangeDecoder rangeDecoder = lZMADecoder.n;
            short[] sArr = this.f22714a;
            if (rangeDecoder.b(sArr, 0) == 0) {
                return lZMADecoder.n.c(this.b[i]) + 2;
            }
            if (lZMADecoder.n.b(sArr, 1) == 0) {
                return lZMADecoder.n.c(this.f22715c[i]) + 10;
            }
            return lZMADecoder.n.c(this.d) + 18;
        }
    }

    /* loaded from: classes4.dex */
    public class LiteralDecoder extends LZMACoder.LiteralCoder {

        /* renamed from: c, reason: collision with root package name */
        public final LiteralSubdecoder[] f22718c;

        /* loaded from: classes4.dex */
        public class LiteralSubdecoder extends LZMACoder.LiteralCoder.LiteralSubcoder {
            public LiteralSubdecoder() {
            }
        }

        public LiteralDecoder(int i, int i2) {
            super(i, i2);
            this.f22718c = new LiteralSubdecoder[1 << (i + i2)];
            int i3 = 0;
            while (true) {
                LiteralSubdecoder[] literalSubdecoderArr = this.f22718c;
                if (i3 < literalSubdecoderArr.length) {
                    literalSubdecoderArr[i3] = new LiteralSubdecoder();
                    i3++;
                } else {
                    return;
                }
            }
        }
    }

    public LZMADecoder(LZDecoder lZDecoder, RangeDecoder rangeDecoder, int i, int i2, int i3) {
        super(i3);
        this.p = new LengthDecoder();
        this.q = new LengthDecoder();
        this.m = lZDecoder;
        this.n = rangeDecoder;
        this.o = new LiteralDecoder(i, i2);
        a();
    }

    @Override // org.tukaani.xz.lzma.LZMACoder
    public final void a() {
        super.a();
        int i = 0;
        while (true) {
            LiteralDecoder.LiteralSubdecoder[] literalSubdecoderArr = this.o.f22718c;
            if (i < literalSubdecoderArr.length) {
                RangeCoder.a(literalSubdecoderArr[i].f22717a);
                i++;
            } else {
                this.p.a();
                this.q.a();
                return;
            }
        }
    }

    public final void b() {
        int i;
        int i2;
        int i3;
        int i4;
        LZDecoder lZDecoder = this.m;
        int i5 = lZDecoder.e;
        if (i5 > 0) {
            lZDecoder.a(lZDecoder.f, i5);
        }
        while (true) {
            int i6 = lZDecoder.b;
            int i7 = lZDecoder.d;
            RangeDecoder rangeDecoder = this.n;
            if (i6 < i7) {
                int i8 = i6 & this.f22712a;
                short[][] sArr = this.d;
                State state = this.f22713c;
                if (rangeDecoder.b(sArr[state.f22719a], i8) != 0) {
                    int b = rangeDecoder.b(this.e, state.f22719a);
                    int i9 = 3;
                    int[] iArr = this.b;
                    int i10 = 1;
                    if (b == 0) {
                        int i11 = 7;
                        if (state.f22719a >= 7) {
                            i11 = 10;
                        }
                        state.f22719a = i11;
                        iArr[3] = iArr[2];
                        iArr[2] = iArr[1];
                        iArr[1] = iArr[0];
                        i3 = this.p.b(i8);
                        if (i3 < 6) {
                            i9 = i3 - 2;
                        }
                        int c2 = rangeDecoder.c(this.j[i9]);
                        if (c2 < 4) {
                            iArr[0] = c2;
                        } else {
                            int i12 = c2 >> 1;
                            int i13 = (2 | (c2 & 1)) << (i12 - 1);
                            iArr[0] = i13;
                            if (c2 < 14) {
                                short[] sArr2 = this.k[c2 - 4];
                                int i14 = 1;
                                int i15 = 0;
                                int i16 = 0;
                                while (true) {
                                    int b2 = rangeDecoder.b(sArr2, i14);
                                    i14 = (i14 << 1) | b2;
                                    int i17 = i16 + 1;
                                    i15 |= b2 << i16;
                                    if (i14 >= sArr2.length) {
                                        break;
                                    } else {
                                        i16 = i17;
                                    }
                                }
                                iArr[0] = i13 | i15;
                            } else {
                                int i18 = i12 - 5;
                                int i19 = 0;
                                do {
                                    rangeDecoder.d();
                                    int i20 = rangeDecoder.f22720a >>> 1;
                                    rangeDecoder.f22720a = i20;
                                    int i21 = rangeDecoder.b;
                                    int i22 = (i21 - i20) >>> 31;
                                    rangeDecoder.b = i21 - (i20 & (i22 - 1));
                                    i19 = (i19 << 1) | (1 - i22);
                                    i18--;
                                } while (i18 != 0);
                                int i23 = i13 | (i19 << 4);
                                iArr[0] = i23;
                                int i24 = 1;
                                int i25 = 0;
                                int i26 = 0;
                                while (true) {
                                    short[] sArr3 = this.l;
                                    int b3 = rangeDecoder.b(sArr3, i24);
                                    i24 = (i24 << 1) | b3;
                                    int i27 = i26 + 1;
                                    i25 |= b3 << i26;
                                    if (i24 >= sArr3.length) {
                                        break;
                                    } else {
                                        i26 = i27;
                                    }
                                }
                                iArr[0] = i23 | i25;
                            }
                        }
                    } else {
                        if (rangeDecoder.b(this.f, state.f22719a) == 0) {
                            if (rangeDecoder.b(this.i[state.f22719a], i8) == 0) {
                                if (state.f22719a < 7) {
                                    i4 = 9;
                                } else {
                                    i4 = 11;
                                }
                                state.f22719a = i4;
                                i3 = i10;
                            }
                        } else {
                            if (rangeDecoder.b(this.g, state.f22719a) == 0) {
                                i = iArr[1];
                            } else {
                                if (rangeDecoder.b(this.h, state.f22719a) == 0) {
                                    i = iArr[2];
                                } else {
                                    i = iArr[3];
                                    iArr[3] = iArr[2];
                                }
                                iArr[2] = iArr[1];
                            }
                            iArr[1] = iArr[0];
                            iArr[0] = i;
                        }
                        if (state.f22719a < 7) {
                            i2 = 8;
                        } else {
                            i2 = 11;
                        }
                        state.f22719a = i2;
                        i10 = this.q.b(i8);
                        i3 = i10;
                    }
                    lZDecoder.a(iArr[0], i3);
                } else {
                    int i28 = LZMADecoder.this.m.b;
                    throw null;
                }
            } else {
                rangeDecoder.d();
                return;
            }
        }
    }
}
