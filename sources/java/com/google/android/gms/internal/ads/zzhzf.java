package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhzf extends zzhzj {
    public final int h;
    public final int i;

    public zzhzf(byte[] bArr, int i, int i2) {
        super(bArr);
        zzhzl.c(i, i + i2, bArr.length);
        this.h = i;
        this.i = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzhzj
    public final int G() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzhzj, com.google.android.gms.internal.ads.zzhzl
    public final byte g(int i) {
        zzhzl.a(i, this.i);
        return this.g[this.h + i];
    }

    @Override // com.google.android.gms.internal.ads.zzhzj, com.google.android.gms.internal.ads.zzhzl
    public final byte i(int i) {
        return this.g[this.h + i];
    }

    @Override // com.google.android.gms.internal.ads.zzhzj, com.google.android.gms.internal.ads.zzhzl
    public final int k() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzhzj, com.google.android.gms.internal.ads.zzhzl
    public final void p(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.g, this.h + i, bArr, i2, i3);
    }
}
