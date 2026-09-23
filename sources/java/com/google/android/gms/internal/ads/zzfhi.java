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
public final class zzfhi extends zzcae {

    /* renamed from: c, reason: collision with root package name */
    public final zzfhe f7357c;
    public final zzfgv f;
    public final String g;
    public final zzfid h;
    public final Context i;
    public final VersionInfoParcel j;
    public final zzayq k;
    public final zzdxe l;
    public zzdte m;
    public boolean n = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i1)).booleanValue();

    public zzfhi(String str, zzfhe zzfheVar, Context context, zzfgv zzfgvVar, zzfid zzfidVar, VersionInfoParcel versionInfoParcel, zzayq zzayqVar, zzdxe zzdxeVar) {
        this.g = str;
        this.f7357c = zzfheVar;
        this.f = zzfgvVar;
        this.h = zzfidVar;
        this.i = context;
        this.j = versionInfoParcel;
        this.k = zzayqVar;
        this.l = zzdxeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Object, com.google.android.gms.internal.ads.zzerd] */
    public final synchronized void c5(com.google.android.gms.ads.internal.client.zzm zzmVar, zzcam zzcamVar, int i) {
        try {
            if (!zzmVar.zzb()) {
                boolean z = false;
                if (((Boolean) zzbii.k.c()).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                        z = true;
                    }
                }
                if (this.j.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bc)).intValue() || !z) {
                    Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
                }
            }
            zzfgv zzfgvVar = this.f;
            zzfgvVar.g.set(zzcamVar);
            com.google.android.gms.ads.internal.zzt.zzc();
            if (com.google.android.gms.ads.internal.util.zzs.zzM(this.i) && zzmVar.zzs == null) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to load the ad because app ID is missing.");
                zzfgvVar.S(zzfjm.d(4, null, null));
                return;
            }
            if (this.m != null) {
                return;
            }
            ?? obj = new Object();
            zzfhe zzfheVar = this.f7357c;
            zzfheVar.h.o.f7376a = i;
            zzfheVar.a(zzmVar, this.g, obj, new zzfhh(this));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzb(IObjectWrapper iObjectWrapper) {
        zzk(iObjectWrapper, this.n);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzc(com.google.android.gms.ads.internal.client.zzm zzmVar, zzcam zzcamVar) {
        c5(zzmVar, zzcamVar, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzd(com.google.android.gms.ads.internal.client.zzm zzmVar, zzcam zzcamVar) {
        c5(zzmVar, zzcamVar, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zze(zzcai zzcaiVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.f.h.set(zzcaiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzf(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        zzfgv zzfgvVar = this.f;
        if (zzdqVar == null) {
            zzfgvVar.f.set(null);
        } else {
            zzfgvVar.f.set(new zzfhg(this, zzdqVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final Bundle zzg() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdte zzdteVar = this.m;
        if (zzdteVar != null) {
            return zzdteVar.d();
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzh(zzcat zzcatVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzfid zzfidVar = this.h;
        zzfidVar.f7384a = zzcatVar.f5000c;
        zzfidVar.b = zzcatVar.f;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final boolean zzi() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdte zzdteVar = this.m;
        if (zzdteVar != null && !zzdteVar.w) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized String zzj() {
        zzdad zzdadVar;
        zzdte zzdteVar = this.m;
        if (zzdteVar != null && (zzdadVar = zzdteVar.f) != null) {
            return zzdadVar.f5650c;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzk(IObjectWrapper iObjectWrapper, boolean z) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.m == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Rewarded can not be shown before loaded");
            this.f.g(zzfjm.d(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z3)).booleanValue()) {
                this.k.b.zzi(new Throwable().getStackTrace());
            }
            this.m.c((Activity) ObjectWrapper.f2(iObjectWrapper), z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final zzcac zzl() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdte zzdteVar = this.m;
        if (zzdteVar != null) {
            return zzdteVar.s;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final com.google.android.gms.ads.internal.client.zzea zzm() {
        zzdte zzdteVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B7)).booleanValue() && (zzdteVar = this.m) != null) {
            return zzdteVar.f;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final String zzn() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzo(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        Preconditions.checkMainThread("setOnPaidEventListener must be called on the main UI thread.");
        try {
            if (!zzdtVar.zzf()) {
                this.l.b();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Error in making CSI ping for reporting paid event callback", e);
        }
        this.f.l.set(zzdtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzp(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.n = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized long zzq() {
        zzcze zzczeVar;
        zzdte zzdteVar = this.m;
        if (zzdteVar != null && (zzczeVar = zzdteVar.j) != null) {
            return zzczeVar.f5617a.get();
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzr(long j) {
        zzcze zzczeVar;
        zzdte zzdteVar = this.m;
        if (zzdteVar != null && (zzczeVar = zzdteVar.j) != null) {
            zzczeVar.a(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzs(zzcan zzcanVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.f.j.set(zzcanVar);
    }
}
