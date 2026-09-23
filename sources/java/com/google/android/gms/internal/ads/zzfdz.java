package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzfdz extends com.google.android.gms.ads.internal.client.zzbw implements com.google.android.gms.ads.internal.overlay.zzr, zzbdx {

    /* renamed from: c, reason: collision with root package name */
    public final zzclg f7259c;
    public final Context f;
    public final String h;
    public final zzfdt i;
    public final zzfdr j;
    public final VersionInfoParcel k;
    public final zzdxe l;
    public zzcsj n;
    public zzcsw o;
    public AtomicBoolean g = new AtomicBoolean();
    public long m = -1;

    public zzfdz(zzclg zzclgVar, Context context, String str, zzfdt zzfdtVar, zzfdr zzfdrVar, VersionInfoParcel versionInfoParcel, zzdxe zzdxeVar) {
        this.f7259c = zzclgVar;
        this.f = context;
        this.h = str;
        this.i = zzfdtVar;
        this.j = zzfdrVar;
        this.k = versionInfoParcel;
        this.l = zzdxeVar;
        zzfdrVar.j.set(this);
    }

    public final synchronized void c5(int i) {
        try {
            if (this.g.compareAndSet(false, true)) {
                this.j.i();
                zzcsj zzcsjVar = this.n;
                if (zzcsjVar != null) {
                    com.google.android.gms.ads.internal.zzt.zzg().c(zzcsjVar);
                }
                if (this.o != null) {
                    long j = -1;
                    if (this.m != -1) {
                        j = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - this.m;
                    }
                    this.o.e(i, j);
                }
                zzc();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzA() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzB() {
        boolean z;
        ListenableFuture listenableFuture = this.i.j;
        if (listenableFuture != null) {
            if (!listenableFuture.isDone()) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzC(zzbzs zzbzsVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzD(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzE(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzed zzF() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzG(com.google.android.gms.ads.internal.client.zzga zzgaVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzH(com.google.android.gms.ads.internal.client.zzeh zzehVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzI(com.google.android.gms.ads.internal.client.zzx zzxVar) {
        this.i.i.i = zzxVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzJ(zzbeg zzbegVar) {
        this.j.f.set(zzbegVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzK(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzQ(com.google.android.gms.ads.internal.client.zzm zzmVar, com.google.android.gms.ads.internal.client.zzbn zzbnVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzR(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzS(com.google.android.gms.ads.internal.client.zzcv zzcvVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzT(long j) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final long zzU() {
        return 0L;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzY(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final void zza() {
        c5(3);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzb() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzc() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        zzcsw zzcswVar = this.o;
        if (zzcswVar != null) {
            zzcswVar.d();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzd() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzdR(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdS() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdT(int i) {
        if (i != 0) {
            int i2 = i - 1;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        c5(6);
                        return;
                    } else {
                        c5(3);
                        return;
                    }
                }
                c5(4);
                return;
            }
            c5(2);
            return;
        }
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdv() {
        zzcsw zzcswVar = this.o;
        if (zzcswVar != null) {
            zzcswVar.e(1, com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - this.m);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdx() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [java.lang.Object, com.google.android.gms.internal.ads.zzerd] */
    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zze(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        boolean z;
        try {
            if (!zzmVar.zzb()) {
                if (((Boolean) zzbii.d.c()).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                        z = true;
                        if (this.k.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bc)).intValue() || !z) {
                            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
                        }
                    }
                }
                z = false;
                if (this.k.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bc)).intValue()) {
                }
                Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            if (com.google.android.gms.ads.internal.util.zzs.zzM(this.f) && zzmVar.zzs == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to load the ad because app ID is missing.");
                this.j.S(zzfjm.d(4, null, null));
                return false;
            }
            if (zzB()) {
                return false;
            }
            this.g = new AtomicBoolean();
            return this.i.a(zzmVar, this.h, new Object(), new zzfdw(this));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzf() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzg() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzh() {
        if (this.o != null) {
            this.m = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
            int i = this.o.m;
            if (i > 0) {
                zzcsj zzcsjVar = new zzcsj(this.f7259c.g(), com.google.android.gms.ads.internal.zzt.zzk());
                this.n = zzcsjVar;
                zzcsjVar.a(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdx
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        final zzfdz zzfdzVar = zzfdz.this;
                        zzfdzVar.f7259c.f().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdy
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzfdz.this.c5(5);
                            }
                        });
                    }
                }, i);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzi(com.google.android.gms.ads.internal.client.zzco zzcoVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzj(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final Bundle zzk() {
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzl() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzm() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzr zzn() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzo(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzp(zzbxh zzbxhVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzq(zzbxk zzbxkVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzr() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzs() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzea zzt() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzu() {
        return this.h;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzco zzv() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzbk zzw() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzx(zzbhf zzbhfVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzz(boolean z) {
    }
}
