package com.google.android.gms.internal.ads;

import kotlin.uuid.Uuid;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzhzs extends zzhzw {
    public final byte[] d;
    public final int e;
    public int f;

    public zzhzs(int i) {
        if (i >= 0) {
            byte[] bArr = new byte[Math.max(i, 20)];
            this.d = bArr;
            this.e = bArr.length;
            return;
        }
        throw new IllegalArgumentException("bufferSize must be >= 0");
    }

    public final void C(int i) {
        boolean z = zzhzw.f8899c;
        byte[] bArr = this.d;
        if (z) {
            while ((i & (-128)) != 0) {
                int i2 = this.f;
                this.f = i2 + 1;
                zzidm.m(bArr, i2, (byte) (i | Uuid.SIZE_BITS));
                i >>>= 7;
            }
            int i3 = this.f;
            this.f = i3 + 1;
            zzidm.m(bArr, i3, (byte) i);
            return;
        }
        while ((i & (-128)) != 0) {
            int i4 = this.f;
            this.f = i4 + 1;
            bArr[i4] = (byte) (i | Uuid.SIZE_BITS);
            i >>>= 7;
        }
        int i5 = this.f;
        this.f = i5 + 1;
        bArr[i5] = (byte) i;
    }

    public final void D(long j) {
        boolean z = zzhzw.f8899c;
        byte[] bArr = this.d;
        if (z) {
            while (true) {
                int i = (int) j;
                if ((j & (-128)) == 0) {
                    int i2 = this.f;
                    this.f = i2 + 1;
                    zzidm.m(bArr, i2, (byte) i);
                    return;
                } else {
                    int i3 = this.f;
                    this.f = i3 + 1;
                    zzidm.m(bArr, i3, (byte) (i | Uuid.SIZE_BITS));
                    j >>>= 7;
                }
            }
        } else {
            while (true) {
                int i4 = (int) j;
                if ((j & (-128)) == 0) {
                    int i5 = this.f;
                    this.f = i5 + 1;
                    bArr[i5] = (byte) i4;
                    return;
                } else {
                    int i6 = this.f;
                    this.f = i6 + 1;
                    bArr[i6] = (byte) (i4 | Uuid.SIZE_BITS);
                    j >>>= 7;
                }
            }
        }
    }

    public final void E(int i) {
        int i2 = this.f;
        byte[] bArr = this.d;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
        this.f = i2 + 4;
    }

    public final void F(long j) {
        int i = this.f;
        byte[] bArr = this.d;
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >> 8);
        bArr[i + 2] = (byte) (j >> 16);
        bArr[i + 3] = (byte) (j >> 24);
        bArr[i + 4] = (byte) (j >> 32);
        bArr[i + 5] = (byte) (j >> 40);
        bArr[i + 6] = (byte) (j >> 48);
        bArr[i + 7] = (byte) (j >> 56);
        this.f = i + 8;
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final int l() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }
}
