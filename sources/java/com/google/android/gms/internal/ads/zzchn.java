package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes.dex */
final class zzchn implements zzhb {

    /* renamed from: a, reason: collision with root package name */
    public final zzgw f5153a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhb f5154c;
    public long d;
    public Uri e;

    public zzchn(zzgw zzgwVar, int i, zzhb zzhbVar) {
        this.f5153a = zzgwVar;
        this.b = i;
        this.f5154c = zzhbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        zzhf zzhfVar2;
        long j;
        zzhf zzhfVar3;
        zzhf zzhfVar4;
        long j2;
        Uri uri = zzhfVar.f8483a;
        long j3 = zzhfVar.d;
        this.e = uri;
        long j4 = zzhfVar.f8484c;
        long j5 = this.b;
        if (j4 >= j5) {
            zzhfVar2 = null;
        } else {
            long j6 = j5 - j4;
            if (j3 != -1) {
                j6 = Math.min(j3, j6);
            }
            zzhfVar2 = new zzhf(uri, j4, j6);
        }
        if (j3 != -1 && j4 + j3 <= j5) {
            zzhfVar3 = zzhfVar2;
            zzhfVar4 = null;
        } else {
            long max = Math.max(j5, j4);
            if (j3 != -1) {
                j = Math.min(j3, (j4 + j3) - j5);
            } else {
                j = -1;
            }
            zzhfVar3 = zzhfVar2;
            zzhfVar4 = new zzhf(uri, max, j);
        }
        long j7 = 0;
        if (zzhfVar3 != null) {
            j2 = this.f5153a.a(zzhfVar3);
        } else {
            j2 = 0;
        }
        if (zzhfVar4 != null) {
            j7 = this.f5154c.a(zzhfVar4);
        }
        this.d = j4;
        if (j2 == -1 || j7 == -1) {
            return -1L;
        }
        return j2 + j7;
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        int i3;
        long j = this.d;
        long j2 = this.b;
        if (j < j2) {
            int b = this.f5153a.b(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.d + b;
            this.d = j3;
            i3 = b;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j >= j2) {
            int b2 = this.f5154c.b(bArr, i + i3, i2 - i3);
            int i4 = i3 + b2;
            this.d += b2;
            return i4;
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void c(zzhz zzhzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        this.f5153a.zzd();
        this.f5154c.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Map zzj() {
        return zzgvd.k;
    }
}
