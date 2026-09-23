package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public class zzdsd implements com.google.android.gms.ads.internal.client.zza, zzbmd, com.google.android.gms.ads.internal.overlay.zzr, zzbmf, com.google.android.gms.ads.internal.overlay.zzad {

    /* renamed from: c, reason: collision with root package name */
    public com.google.android.gms.ads.internal.client.zza f6091c;
    public zzbmd f;
    public com.google.android.gms.ads.internal.overlay.zzr g;
    public zzbmf h;
    public com.google.android.gms.ads.internal.overlay.zzad i;

    public final synchronized void a(com.google.android.gms.ads.internal.client.zza zzaVar, zzbmd zzbmdVar, com.google.android.gms.ads.internal.overlay.zzr zzrVar, zzbmf zzbmfVar, com.google.android.gms.ads.internal.overlay.zzad zzadVar) {
        this.f6091c = zzaVar;
        this.f = zzbmdVar;
        this.g = zzrVar;
        this.h = zzbmfVar;
        this.i = zzadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbmd
    public final synchronized void g(String str, Bundle bundle) {
        zzbmd zzbmdVar = this.f;
        if (zzbmdVar != null) {
            zzbmdVar.g(str, bundle);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.f6091c;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbmf
    public final synchronized void zzb(String str, String str2) {
        zzbmf zzbmfVar = this.h;
        if (zzbmfVar != null) {
            zzbmfVar.zzb(str, str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdS() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdS();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdT(int i) {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdT(i);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdo();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdp();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdq();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdv() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdv();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdw() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdw();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdx() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdx();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdy();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzdz();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzh() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.g;
        if (zzrVar != null) {
            zzrVar.zzh();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzad
    public final synchronized void zzl() {
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.i;
        if (zzadVar != null) {
            zzadVar.zzl();
        }
    }
}
