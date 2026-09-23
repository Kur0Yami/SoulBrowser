package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzeqx extends com.google.android.gms.ads.internal.client.zzbw {

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzr f6830c;
    public final Context f;
    public final zzffv g;
    public final String h;
    public final VersionInfoParcel i;
    public final zzeqp j;
    public final zzfgv k;
    public final zzayq l;
    public final zzdxe m;
    public zzdjs n;
    public boolean o = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i1)).booleanValue();

    public zzeqx(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzffv zzffvVar, zzeqp zzeqpVar, zzfgv zzfgvVar, VersionInfoParcel versionInfoParcel, zzayq zzayqVar, zzdxe zzdxeVar) {
        this.f6830c = zzrVar;
        this.h = str;
        this.f = context;
        this.g = zzffvVar;
        this.j = zzeqpVar;
        this.k = zzfgvVar;
        this.i = versionInfoParcel;
        this.l = zzayqVar;
        this.m = zzdxeVar;
    }

    public final synchronized boolean c5() {
        zzdjs zzdjsVar = this.n;
        if (zzdjsVar != null) {
            if (!zzdjsVar.p.f.get()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzA() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzB() {
        return this.g.b();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzC(zzbzs zzbzsVar) {
        this.k.i.set(zzbzsVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzD(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzE(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzed zzF() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzG(com.google.android.gms.ads.internal.client.zzga zzgaVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzH(com.google.android.gms.ads.internal.client.zzeh zzehVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzI(com.google.android.gms.ads.internal.client.zzx zzxVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzJ(zzbeg zzbegVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzK(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.o = z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        try {
            if (!zzdtVar.zzf()) {
                this.m.b();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Error in making CSI ping for reporting paid event callback", e);
        }
        this.j.g.set(zzdtVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzQ(com.google.android.gms.ads.internal.client.zzm zzmVar, com.google.android.gms.ads.internal.client.zzbn zzbnVar) {
        this.j.h.set(zzbnVar);
        zze(zzmVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzR(IObjectWrapper iObjectWrapper) {
        if (this.n == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Interstitial can not be shown before loaded.");
            this.j.g(zzfjm.d(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z3)).booleanValue()) {
                this.l.b.zzi(new Throwable().getStackTrace());
            }
            this.n.c((Activity) ObjectWrapper.f2(iObjectWrapper), this.o);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzS(com.google.android.gms.ads.internal.client.zzcv zzcvVar) {
        this.j.i.set(zzcvVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzT(long j) {
        zzcze zzczeVar;
        zzdjs zzdjsVar = this.n;
        if (zzdjsVar != null && (zzczeVar = zzdjsVar.j) != null) {
            zzczeVar.a(j);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized long zzU() {
        zzcze zzczeVar;
        zzdjs zzdjsVar = this.n;
        if (zzdjsVar != null && (zzczeVar = zzdjsVar.j) != null) {
            return zzczeVar.f5617a.get();
        }
        return 0L;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzY(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzb() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzc() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        zzdjs zzdjsVar = this.n;
        if (zzdjsVar != null) {
            zzdbj zzdbjVar = zzdjsVar.f5507c;
            zzdbjVar.getClass();
            zzdbjVar.s0(new zzdbh(null));
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzd() {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return c5();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzdR(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.j.f6823c.set(zzbkVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zze(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        boolean z;
        try {
            if (!zzmVar.zzb()) {
                if (((Boolean) zzbii.i.c()).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                        z = true;
                        if (this.i.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bc)).intValue() || !z) {
                            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
                        }
                    }
                }
                z = false;
                if (this.i.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bc)).intValue()) {
                }
                Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            Context context = this.f;
            if (com.google.android.gms.ads.internal.util.zzs.zzM(context) && zzmVar.zzs == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to load the ad because app ID is missing.");
                zzeqp zzeqpVar = this.j;
                if (zzeqpVar != null) {
                    zzeqpVar.S(zzfjm.d(4, null, null));
                }
            } else if (!c5()) {
                zzfjh.b(context, zzmVar.zzf);
                this.n = null;
                return this.g.a(zzmVar, this.h, new zzffo(this.f6830c), new zzeqw(this));
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzf() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        zzdjs zzdjsVar = this.n;
        if (zzdjsVar != null) {
            zzdbj zzdbjVar = zzdjsVar.f5507c;
            zzdbjVar.getClass();
            zzdbjVar.s0(new zzdbi(null));
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzg() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        zzdjs zzdjsVar = this.n;
        if (zzdjsVar != null) {
            zzdbj zzdbjVar = zzdjsVar.f5507c;
            zzdbjVar.getClass();
            zzdbjVar.s0(new zzdbg(null));
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzi(com.google.android.gms.ads.internal.client.zzco zzcoVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.j.i(zzcoVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzj(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final Bundle zzk() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzl() {
        Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
        if (this.n == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Interstitial can not be shown before loaded.");
            this.j.g(zzfjm.d(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z3)).booleanValue()) {
                this.l.b.zzi(new Throwable().getStackTrace());
            }
            this.n.c(null, this.o);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzm() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzr zzn() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzo(com.google.android.gms.ads.internal.client.zzr zzrVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzp(zzbxh zzbxhVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzq(zzbxk zzbxkVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzr() {
        zzdad zzdadVar;
        zzdjs zzdjsVar = this.n;
        if (zzdjsVar != null && (zzdadVar = zzdjsVar.f) != null) {
            return zzdadVar.f5650c;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzs() {
        zzdad zzdadVar;
        zzdjs zzdjsVar = this.n;
        if (zzdjsVar != null && (zzdadVar = zzdjsVar.f) != null) {
            return zzdadVar.f5650c;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzea zzt() {
        zzdjs zzdjsVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B7)).booleanValue() && (zzdjsVar = this.n) != null) {
            return zzdjsVar.f;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzu() {
        return this.h;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzco zzv() {
        com.google.android.gms.ads.internal.client.zzco zzcoVar;
        zzeqp zzeqpVar = this.j;
        synchronized (zzeqpVar) {
            zzcoVar = (com.google.android.gms.ads.internal.client.zzco) zzeqpVar.f.get();
        }
        return zzcoVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzbk zzw() {
        return this.j.b();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzx(zzbhf zzbhfVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.g.f = zzbhfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzz(boolean z) {
    }
}
