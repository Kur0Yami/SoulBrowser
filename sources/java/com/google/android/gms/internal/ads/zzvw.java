package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import kotlin.KotlinVersion;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzvw implements zzhb {

    /* renamed from: a, reason: collision with root package name */
    public final zzhb f9330a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzvv f9331c;
    public final byte[] d;
    public int e;

    public zzvw(zzhb zzhbVar, int i, zzvv zzvvVar) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        this.f9330a = zzhbVar;
        this.b = i;
        this.f9331c = zzvvVar;
        this.d = new byte[1];
        this.e = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        long max;
        int i3 = this.e;
        zzhb zzhbVar = this.f9330a;
        if (i3 == 0) {
            byte[] bArr2 = this.d;
            int i4 = 0;
            if (zzhbVar.b(bArr2, 0, 1) != -1) {
                int i5 = (bArr2[0] & KotlinVersion.MAX_COMPONENT_VALUE) << 4;
                if (i5 != 0) {
                    byte[] bArr3 = new byte[i5];
                    int i6 = i5;
                    while (i6 > 0) {
                        int b = zzhbVar.b(bArr3, i4, i6);
                        if (b != -1) {
                            i4 += b;
                            i6 -= b;
                        }
                    }
                    while (i5 > 0) {
                        int i7 = i5 - 1;
                        if (bArr3[i7] != 0) {
                            break;
                        }
                        i5 = i7;
                    }
                    if (i5 > 0) {
                        zzer zzerVar = new zzer(bArr3, i5);
                        zzxb zzxbVar = (zzxb) this.f9331c;
                        if (!zzxbVar.l) {
                            max = zzxbVar.i;
                        } else {
                            max = Math.max(zzxbVar.m.s(true), zzxbVar.i);
                        }
                        long j = max;
                        int B = zzerVar.B();
                        zzaga zzagaVar = zzxbVar.k;
                        zzagaVar.getClass();
                        zzagaVar.b(B, zzerVar);
                        zzagaVar.d(j, 1, B, 0, null);
                        zzxbVar.l = true;
                    }
                }
                i3 = this.b;
                this.e = i3;
            }
            return -1;
        }
        int b2 = zzhbVar.b(bArr, i, Math.min(i3, i2));
        if (b2 != -1) {
            this.e -= b2;
        }
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void c(zzhz zzhzVar) {
        zzhzVar.getClass();
        this.f9330a.c(zzhzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        return this.f9330a.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Map zzj() {
        return this.f9330a.zzj();
    }
}
