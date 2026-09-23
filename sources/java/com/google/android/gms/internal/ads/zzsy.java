package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import kotlin.KotlinVersion;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public final class zzsy extends zzcp {
    public int i;
    public boolean j;
    public int k;
    public long l;
    public int m;
    public byte[] n;
    public int o;
    public int p;
    public byte[] q;

    @Override // com.google.android.gms.internal.ads.zzco
    public final void b(ByteBuffer byteBuffer) {
        boolean z;
        int limit;
        int i;
        boolean z2;
        int position;
        while (byteBuffer.hasRemaining() && !this.g.hasRemaining()) {
            boolean z3 = true;
            if (this.k != 0) {
                if (this.o < this.n.length) {
                    z = true;
                } else {
                    z = false;
                }
                zzgqa.f(z);
                int limit2 = byteBuffer.limit();
                int position2 = byteBuffer.position() + 1;
                while (true) {
                    if (position2 < byteBuffer.limit()) {
                        if (Math.abs((byteBuffer.get(position2) << 8) | (byteBuffer.get(position2 - 1) & UByte.MAX_VALUE)) > 1024) {
                            int i2 = this.i;
                            limit = (position2 / i2) * i2;
                            break;
                        }
                        position2 += 2;
                    } else {
                        limit = byteBuffer.limit();
                        break;
                    }
                }
                int position3 = limit - byteBuffer.position();
                int i3 = this.o;
                int i4 = this.p;
                int i5 = i3 + i4;
                int length = this.n.length;
                if (i5 < length) {
                    i = length - i5;
                } else {
                    i5 = i4 - (length - i3);
                    i = i3 - i5;
                }
                int min = Math.min(position3, i);
                byteBuffer.limit(byteBuffer.position() + min);
                byteBuffer.get(this.n, i5, min);
                int i6 = this.p + min;
                this.p = i6;
                if (i6 <= this.n.length) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzgqa.f(z2);
                if (limit >= limit2 || position3 >= i) {
                    z3 = false;
                }
                i(z3);
                if (z3) {
                    this.k = 0;
                    this.m = 0;
                }
                byteBuffer.limit(limit2);
            } else {
                int limit3 = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit3, byteBuffer.position() + this.n.length));
                int limit4 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit4 >= byteBuffer.position()) {
                        if (Math.abs((byteBuffer.get(limit4) << 8) | (byteBuffer.get(limit4 - 1) & UByte.MAX_VALUE)) > 1024) {
                            int i7 = this.i;
                            position = ((limit4 / i7) * i7) + i7;
                            break;
                        }
                        limit4 -= 2;
                    } else {
                        position = byteBuffer.position();
                        break;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.k = 1;
                } else {
                    byteBuffer.limit(Math.min(position, byteBuffer.capacity()));
                    d(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(limit3);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final zzcl e(zzcl zzclVar) {
        if (zzclVar.f5232c == 2) {
            if (zzclVar.f5231a == -1) {
                return zzcl.e;
            }
            return zzclVar;
        }
        throw new zzcn("Unhandled input format:", zzclVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final void f() {
        if (this.p > 0) {
            i(true);
            this.m = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final void g() {
        if (zzc()) {
            int i = this.b.b;
            int i2 = i + i;
            this.i = i2;
            int i3 = ((((int) ((100000 * r0.f5231a) / 1000000)) / 2) / i2) * i2;
            int i4 = i3 + i3;
            if (this.n.length != i4) {
                this.n = new byte[i4];
                this.q = new byte[i4];
            }
        }
        this.k = 0;
        this.l = 0L;
        this.m = 0;
        this.o = 0;
        this.p = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final void h() {
        this.j = false;
        byte[] bArr = zzfj.b;
        this.n = bArr;
        this.q = bArr;
    }

    public final void i(boolean z) {
        int i;
        int i2;
        boolean z2;
        int i3 = this.p;
        int length = this.n.length;
        boolean z3 = true;
        if (i3 != length) {
            if (z) {
                z = true;
            } else {
                return;
            }
        }
        if (this.m == 0) {
            if (z) {
                k(i3, 3);
                i2 = i3;
            } else {
                if (i3 >= (length >> 1)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzgqa.f(z2);
                i2 = this.n.length >> 1;
                k(i2, 0);
            }
            i = i2;
        } else {
            int i4 = length >> 1;
            int i5 = i3 - i4;
            if (z) {
                int j = j(i5) + (this.n.length >> 1);
                k(j, 2);
                int i6 = i4 + i5;
                i = j;
                i2 = i6;
            } else {
                int j2 = j(i5);
                k(j2, 1);
                i = j2;
                i2 = i5;
            }
        }
        if (i2 % this.i == 0) {
            if (i3 < i) {
                z3 = false;
            }
            zzgqa.f(z3);
            this.p -= i2;
            int i7 = this.o + i2;
            this.o = i7;
            this.o = i7 % this.n.length;
            this.m = (i / this.i) + this.m;
            this.l += (i2 - i) / r2;
            return;
        }
        throw new IllegalStateException(zzgqr.b("bytesConsumed is not aligned to frame size: %s", Integer.valueOf(i2)));
    }

    public final int j(int i) {
        boolean z = true;
        int length = ((((int) ((2000000 * this.b.f5231a) / 1000000)) - this.m) * this.i) - (this.n.length >> 1);
        if (length < 0) {
            z = false;
        }
        zzgqa.f(z);
        int min = (int) Math.min((i * 0.2f) + 0.5f, length);
        int i2 = this.i;
        return (min / i2) * i2;
    }

    public final void k(int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        if (i == 0) {
            return;
        }
        boolean z4 = true;
        if (this.p >= i) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        if (i2 == 2) {
            int i4 = this.o;
            int i5 = this.p;
            int i6 = i4 + i5;
            byte[] bArr = this.n;
            int length = bArr.length;
            if (i6 <= length) {
                System.arraycopy(bArr, i6 - i, this.q, 0, i);
            } else {
                int i7 = i5 - (length - i4);
                if (i7 >= i) {
                    System.arraycopy(bArr, i7 - i, this.q, 0, i);
                } else {
                    int i8 = i - i7;
                    System.arraycopy(bArr, length - i8, this.q, 0, i8);
                    System.arraycopy(this.n, 0, this.q, i8, i7);
                }
            }
        } else {
            int i9 = this.o;
            int i10 = i9 + i;
            byte[] bArr2 = this.n;
            int length2 = bArr2.length;
            if (i10 <= length2) {
                System.arraycopy(bArr2, i9, this.q, 0, i);
            } else {
                int i11 = length2 - i9;
                System.arraycopy(bArr2, i9, this.q, 0, i11);
                System.arraycopy(this.n, 0, this.q, i11, i - i11);
            }
        }
        if (i % this.i == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzgqa.c("sizeToOutput is not aligned to frame size: %s", i, z2);
        if (this.o < this.n.length) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzgqa.f(z3);
        byte[] bArr3 = this.q;
        if (i % this.i != 0) {
            z4 = false;
        }
        zzgqa.c("byteOutput size is not aligned to frame size %s", i, z4);
        if (i2 != 3) {
            for (int i12 = 0; i12 < i; i12 += 2) {
                int i13 = i12 + 1;
                int i14 = (bArr3[i13] << 8) | (bArr3[i12] & UByte.MAX_VALUE);
                if (i2 == 0) {
                    i3 = ((((i12 * 1000) / (i - 1)) * (-90)) / 1000) + 100;
                } else {
                    i3 = 10;
                    if (i2 == 2) {
                        i3 = 10 + (((90000 * i12) / (i - 1)) / 1000);
                    }
                }
                int i15 = (i14 * i3) / 100;
                if (i15 >= 32767) {
                    bArr3[i12] = -1;
                    bArr3[i13] = ByteCompanionObject.MAX_VALUE;
                } else if (i15 <= -32768) {
                    bArr3[i12] = 0;
                    bArr3[i13] = ByteCompanionObject.MIN_VALUE;
                } else {
                    bArr3[i12] = (byte) (i15 & KotlinVersion.MAX_COMPONENT_VALUE);
                    bArr3[i13] = (byte) (i15 >> 8);
                }
            }
        }
        d(i).put(bArr3, 0, i).flip();
    }

    @Override // com.google.android.gms.internal.ads.zzcp, com.google.android.gms.internal.ads.zzco
    public final boolean zzc() {
        if (super.zzc() && this.j) {
            return true;
        }
        return false;
    }
}
