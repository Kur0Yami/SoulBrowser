package com.google.android.gms.internal.ads;

import android.net.Uri;

/* loaded from: classes.dex */
public final class zzgw extends zzgt {
    public final zzgv e;
    public Uri f;
    public byte[] g;
    public int h;
    public int i;
    public boolean j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgw(byte[] bArr) {
        super(false);
        zzgu zzguVar = new zzgu(bArr);
        this.e = zzguVar;
        zzgqa.a(bArr.length > 0);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        d(zzhfVar);
        this.f = zzhfVar.f8483a;
        byte[] bArr = ((zzgu) this.e).f8255a;
        this.g = bArr;
        long j = zzhfVar.f8484c;
        int length = bArr.length;
        if (j <= length) {
            int i = (int) j;
            this.h = i;
            int i2 = length - i;
            this.i = i2;
            long j2 = zzhfVar.d;
            if (j2 != -1) {
                this.i = (int) Math.min(i2, j2);
            }
            this.j = true;
            e(zzhfVar);
            if (j2 != -1) {
                return j2;
            }
            return this.i;
        }
        throw new zzhc();
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.i;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.g;
        bArr2.getClass();
        System.arraycopy(bArr2, this.h, bArr, i, min);
        this.h += min;
        this.i -= min;
        f(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        if (this.j) {
            this.j = false;
            g();
        }
        this.f = null;
        this.g = null;
    }
}
