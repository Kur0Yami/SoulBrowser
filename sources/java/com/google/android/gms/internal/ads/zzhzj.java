package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzhzj extends zzhzi {
    public final byte[] g;

    public zzhzj(byte[] bArr) {
        bArr.getClass();
        this.g = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzhzi
    public final boolean F(zzhzl zzhzlVar, int i, int i2) {
        if (i2 <= zzhzlVar.k()) {
            int i3 = i + i2;
            if (i3 <= zzhzlVar.k()) {
                if (zzhzlVar instanceof zzhzj) {
                    zzhzj zzhzjVar = (zzhzj) zzhzlVar;
                    byte[] bArr = zzhzjVar.g;
                    int G = G() + i2;
                    int G2 = G();
                    int G3 = zzhzjVar.G() + i;
                    while (G2 < G) {
                        if (this.g[G2] != bArr[G3]) {
                            return false;
                        }
                        G2++;
                        G3++;
                    }
                    return true;
                }
                return zzhzlVar.s(i, i3).equals(s(0, i2));
            }
            int k = zzhzlVar.k();
            int length = String.valueOf(i).length();
            StringBuilder sb = new StringBuilder(length + 24 + String.valueOf(i2).length() + 2 + String.valueOf(k).length());
            androidx.work.impl.workers.a.A(sb, "Ran off end of other: ", i, ", ", i2);
            throw new IllegalArgumentException(androidx.work.impl.workers.a.r(k, ", ", sb));
        }
        int k2 = k();
        StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 18 + String.valueOf(k2).length());
        sb2.append("Length too large: ");
        sb2.append(i2);
        sb2.append(k2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public int G() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public byte g(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public byte i(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public int k() {
        return this.g.length;
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public void p(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.g, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final zzhzl s(int i, int i2) {
        int c2 = zzhzl.c(i, i2, k());
        if (c2 == 0) {
            return zzhzl.f;
        }
        return new zzhzf(this.g, G() + i, c2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final ByteBuffer t() {
        return ByteBuffer.wrap(this.g, G(), k()).asReadOnlyBuffer();
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final void u(zzhzw zzhzwVar) {
        zzhzwVar.a(this.g, G(), k());
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final boolean v(zzhzl zzhzlVar) {
        if (zzhzlVar instanceof zzhzj) {
            return F(zzhzlVar, 0, k());
        }
        return zzhzlVar.v(this);
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final int w(int i, int i2, int i3) {
        int G = G() + i2;
        Charset charset = zzibe.f8915a;
        for (int i4 = G; i4 < G + i3; i4++) {
            i = (i * 31) + this.g[i4];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzhzl
    public final zzhzq x() {
        return zzhzq.d(this.g, G(), k());
    }
}
