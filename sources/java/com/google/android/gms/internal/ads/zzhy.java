package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzhy implements zzhb {

    /* renamed from: a, reason: collision with root package name */
    public final zzhb f8878a;
    public Uri b = Uri.EMPTY;

    /* renamed from: c, reason: collision with root package name */
    public Map f8879c = Collections.EMPTY_MAP;

    public zzhy(zzhb zzhbVar) {
        this.f8878a = zzhbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        zzhb zzhbVar = this.f8878a;
        this.b = zzhfVar.f8483a;
        this.f8879c = Collections.EMPTY_MAP;
        try {
            long a2 = zzhbVar.a(zzhfVar);
            Uri zzc = zzhbVar.zzc();
            if (zzc != null) {
                this.b = zzc;
            }
            this.f8879c = zzhbVar.zzj();
            return a2;
        } catch (Throwable th) {
            Uri zzc2 = zzhbVar.zzc();
            if (zzc2 != null) {
                this.b = zzc2;
            }
            this.f8879c = zzhbVar.zzj();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        return this.f8878a.b(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void c(zzhz zzhzVar) {
        zzhzVar.getClass();
        this.f8878a.c(zzhzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        return this.f8878a.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        this.f8878a.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Map zzj() {
        return this.f8878a.zzj();
    }
}
