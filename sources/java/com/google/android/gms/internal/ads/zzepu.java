package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;

/* loaded from: classes.dex */
public final class zzepu extends com.google.android.gms.ads.internal.client.zzbw implements zzddg {

    /* renamed from: c, reason: collision with root package name */
    public final Context f6800c;
    public final zzfef f;
    public final String g;
    public final zzeqp h;
    public com.google.android.gms.ads.internal.client.zzr i;
    public final zzfij j;
    public final VersionInfoParcel k;
    public final zzdxe l;
    public zzctc m;

    public zzepu(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzfef zzfefVar, zzeqp zzeqpVar, VersionInfoParcel versionInfoParcel, zzdxe zzdxeVar) {
        this.f6800c = context;
        this.f = zzfefVar;
        this.i = zzrVar;
        this.g = str;
        this.h = zzeqpVar;
        this.j = zzfefVar.k;
        this.k = versionInfoParcel;
        this.l = zzdxeVar;
        zzfefVar.h.m0(this, zzfefVar.b);
    }

    @Override // com.google.android.gms.internal.ads.zzddg
    public final synchronized void I1() {
        boolean zzad;
        zzfef zzfefVar = this.f;
        Object parent = zzfefVar.f.getParent();
        if (!(parent instanceof View)) {
            zzad = false;
        } else {
            View view = (View) parent;
            com.google.android.gms.ads.internal.zzt.zzc();
            zzad = com.google.android.gms.ads.internal.util.zzs.zzad(view, view.getContext());
        }
        if (zzad) {
            zzfefVar.c();
        } else {
            zzfefVar.d();
        }
    }

    public final synchronized void c5(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        zzfij zzfijVar = this.j;
        zzfijVar.b = zzrVar;
        zzfijVar.q = this.i.zzn;
    }

    public final synchronized boolean d5(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        try {
            if (e5()) {
                Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            Context context = this.f6800c;
            if (com.google.android.gms.ads.internal.util.zzs.zzM(context) && zzmVar.zzs == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to load the ad because app ID is missing.");
                zzeqp zzeqpVar = this.h;
                if (zzeqpVar != null) {
                    zzeqpVar.S(zzfjm.d(4, null, null));
                }
                return false;
            }
            zzfjh.b(context, zzmVar.zzf);
            return this.f.a(zzmVar, this.g, null, new zzept(this));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean e5() {
        boolean z;
        if (((Boolean) zzbii.f.c()).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                z = true;
                if (this.k.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bc)).intValue() || !z) {
                    return true;
                }
                return false;
            }
        }
        z = false;
        if (this.k.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bc)).intValue()) {
        }
        return true;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzA() {
        zzctc zzctcVar = this.m;
        if (zzctcVar != null) {
            if (zzctcVar.b.q0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzB() {
        return this.f.b();
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
        Preconditions.checkMainThread("getVideoController must be called from the main thread.");
        zzctc zzctcVar = this.m;
        if (zzctcVar != null) {
            return zzctcVar.e();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzG(com.google.android.gms.ads.internal.client.zzga zzgaVar) {
        try {
            if (e5()) {
                Preconditions.checkMainThread("setVideoOptions must be called on the main UI thread.");
            }
            this.j.d = zzgaVar;
        } catch (Throwable th) {
            throw th;
        }
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
    public final void zzK(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        if (e5()) {
            Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        }
        try {
            if (!zzdtVar.zzf()) {
                this.l.b();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Error in making CSI ping for reporting paid event callback", e);
        }
        this.h.g.set(zzdtVar);
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
    public final synchronized void zzT(long j) {
        zzcze zzczeVar;
        this.j.u.set(j);
        zzctc zzctcVar = this.m;
        if (zzctcVar != null && (zzczeVar = zzctcVar.j) != null) {
            zzczeVar.a(j);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized long zzU() {
        zzcze zzczeVar;
        zzctc zzctcVar = this.m;
        if (zzctcVar != null && (zzczeVar = zzctcVar.j) != null) {
            return zzczeVar.f5617a.get();
        }
        return this.j.u.get();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzY(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
        this.j.w = zzcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddg
    public final synchronized void zza() {
        boolean zzad;
        try {
            Object parent = this.f.f.getParent();
            if (!(parent instanceof View)) {
                zzad = false;
            } else {
                View view = (View) parent;
                com.google.android.gms.ads.internal.zzt.zzc();
                zzad = com.google.android.gms.ads.internal.util.zzs.zzad(view, view.getContext());
            }
            if (zzad) {
                zzfij zzfijVar = this.j;
                com.google.android.gms.ads.internal.client.zzr zzrVar = zzfijVar.b;
                zzctc zzctcVar = this.m;
                if (zzctcVar != null && zzfijVar.q) {
                    zzrVar = zzfiq.a(this.f6800c, Collections.singletonList(zzctcVar.g()));
                }
                c5(zzrVar);
                zzfijVar.p = true;
                try {
                    d5(zzfijVar.f7388a);
                } catch (RemoteException unused) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to refresh the banner ad.");
                }
                this.j.p = false;
                return;
            }
            zzfef zzfefVar = this.f;
            zzfefVar.h.t0(zzfefVar.j.a());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzb() {
        if (e5()) {
            Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        }
        return new ObjectWrapper(this.f.f);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0043 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x003f, B:12:0x0043, B:19:0x003a), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053 A[DONT_GENERATE] */
    @Override // com.google.android.gms.ads.internal.client.zzbx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzc() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbhu r0 = com.google.android.gms.internal.ads.zzbii.e     // Catch: java.lang.Throwable -> L38
            java.lang.Object r0 = r0.c()     // Catch: java.lang.Throwable -> L38
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L38
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L3a
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.xc     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L38
            java.lang.Object r0 = r1.a(r0)     // Catch: java.lang.Throwable -> L38
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L38
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L3a
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r3.k     // Catch: java.lang.Throwable -> L38
            int r0 = r0.clientJarVersion     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.Cc     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L38
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L38
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L38
            if (r0 >= r1) goto L3f
            goto L3a
        L38:
            r0 = move-exception
            goto L55
        L3a:
            java.lang.String r0 = "destroy must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L38
        L3f:
            com.google.android.gms.internal.ads.zzctc r0 = r3.m     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L53
            com.google.android.gms.internal.ads.zzdbj r0 = r0.f5507c     // Catch: java.lang.Throwable -> L38
            r0.getClass()     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzdbh r1 = new com.google.android.gms.internal.ads.zzdbh     // Catch: java.lang.Throwable -> L38
            r2 = 0
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L38
            r0.s0(r1)     // Catch: java.lang.Throwable -> L38
            monitor-exit(r3)
            return
        L53:
            monitor-exit(r3)
            return
        L55:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L38
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzepu.zzc():void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzd() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzdR(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        if (e5()) {
            Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        }
        this.h.f6823c.set(zzbkVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zze(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        c5(this.i);
        return d5(zzmVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0043 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x003f, B:12:0x0043, B:19:0x003a), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053 A[DONT_GENERATE] */
    @Override // com.google.android.gms.ads.internal.client.zzbx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzf() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbhu r0 = com.google.android.gms.internal.ads.zzbii.g     // Catch: java.lang.Throwable -> L38
            java.lang.Object r0 = r0.c()     // Catch: java.lang.Throwable -> L38
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L38
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L3a
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.yc     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L38
            java.lang.Object r0 = r1.a(r0)     // Catch: java.lang.Throwable -> L38
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L38
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L3a
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r3.k     // Catch: java.lang.Throwable -> L38
            int r0 = r0.clientJarVersion     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.Cc     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L38
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L38
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L38
            if (r0 >= r1) goto L3f
            goto L3a
        L38:
            r0 = move-exception
            goto L55
        L3a:
            java.lang.String r0 = "pause must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L38
        L3f:
            com.google.android.gms.internal.ads.zzctc r0 = r3.m     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L53
            com.google.android.gms.internal.ads.zzdbj r0 = r0.f5507c     // Catch: java.lang.Throwable -> L38
            r0.getClass()     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzdbi r1 = new com.google.android.gms.internal.ads.zzdbi     // Catch: java.lang.Throwable -> L38
            r2 = 0
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L38
            r0.s0(r1)     // Catch: java.lang.Throwable -> L38
            monitor-exit(r3)
            return
        L53:
            monitor-exit(r3)
            return
        L55:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L38
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzepu.zzf():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0043 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x003f, B:12:0x0043, B:19:0x003a), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053 A[DONT_GENERATE] */
    @Override // com.google.android.gms.ads.internal.client.zzbx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzg() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbhu r0 = com.google.android.gms.internal.ads.zzbii.h     // Catch: java.lang.Throwable -> L38
            java.lang.Object r0 = r0.c()     // Catch: java.lang.Throwable -> L38
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L38
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L3a
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.wc     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L38
            java.lang.Object r0 = r1.a(r0)     // Catch: java.lang.Throwable -> L38
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L38
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L3a
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r3.k     // Catch: java.lang.Throwable -> L38
            int r0 = r0.clientJarVersion     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.Cc     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L38
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L38
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L38
            if (r0 >= r1) goto L3f
            goto L3a
        L38:
            r0 = move-exception
            goto L55
        L3a:
            java.lang.String r0 = "resume must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L38
        L3f:
            com.google.android.gms.internal.ads.zzctc r0 = r3.m     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L53
            com.google.android.gms.internal.ads.zzdbj r0 = r0.f5507c     // Catch: java.lang.Throwable -> L38
            r0.getClass()     // Catch: java.lang.Throwable -> L38
            com.google.android.gms.internal.ads.zzdbg r1 = new com.google.android.gms.internal.ads.zzdbg     // Catch: java.lang.Throwable -> L38
            r2 = 0
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L38
            r0.s0(r1)     // Catch: java.lang.Throwable -> L38
            monitor-exit(r3)
            return
        L53:
            monitor-exit(r3)
            return
        L55:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L38
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzepu.zzg():void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzi(com.google.android.gms.ads.internal.client.zzco zzcoVar) {
        if (e5()) {
            Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        }
        this.h.i(zzcoVar);
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
    public final void zzl() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzm() {
        Preconditions.checkMainThread("recordManualImpression must be called on the main UI thread.");
        zzctc zzctcVar = this.m;
        if (zzctcVar != null) {
            zzctcVar.j();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzr zzn() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        zzctc zzctcVar = this.m;
        if (zzctcVar != null) {
            return zzfiq.a(this.f6800c, Collections.singletonList(zzctcVar.f()));
        }
        return this.j.b;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzo(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        this.j.b = zzrVar;
        this.i = zzrVar;
        zzctc zzctcVar = this.m;
        if (zzctcVar != null) {
            zzctcVar.d(this.f.f, zzrVar);
        }
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
        zzctc zzctcVar = this.m;
        if (zzctcVar != null && (zzdadVar = zzctcVar.f) != null) {
            return zzdadVar.f5650c;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzs() {
        zzdad zzdadVar;
        zzctc zzctcVar = this.m;
        if (zzctcVar != null && (zzdadVar = zzctcVar.f) != null) {
            return zzdadVar.f5650c;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzea zzt() {
        zzctc zzctcVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B7)).booleanValue() && (zzctcVar = this.m) != null) {
            return zzctcVar.f;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzu() {
        return this.g;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzco zzv() {
        com.google.android.gms.ads.internal.client.zzco zzcoVar;
        zzeqp zzeqpVar = this.h;
        synchronized (zzeqpVar) {
            zzcoVar = (com.google.android.gms.ads.internal.client.zzco) zzeqpVar.f.get();
        }
        return zzcoVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzbk zzw() {
        return this.h.b();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzx(zzbhf zzbhfVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f.g = zzbhfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        if (e5()) {
            Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        }
        zzeqt zzeqtVar = this.f.e;
        synchronized (zzeqtVar) {
            zzeqtVar.f6827c = zzbhVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzz(boolean z) {
        try {
            if (e5()) {
                Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
            }
            this.j.e = z;
        } catch (Throwable th) {
            throw th;
        }
    }
}
