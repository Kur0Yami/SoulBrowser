package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzcsx extends zzbec {
    public final zzcsw f;
    public final com.google.android.gms.ads.internal.client.zzbx g;
    public final zzfdr h;
    public boolean i;
    public final zzdxe j;

    public zzcsx(zzcsw zzcswVar, com.google.android.gms.ads.internal.client.zzbx zzbxVar, zzfdr zzfdrVar, zzdxe zzdxeVar) {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
        this.i = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l1)).booleanValue();
        this.f = zzcswVar;
        this.g = zzbxVar;
        this.h = zzfdrVar;
        this.j = zzdxeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final void G2(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        Preconditions.checkMainThread("setOnPaidEventListener must be called on the main UI thread.");
        zzfdr zzfdrVar = this.h;
        if (zzfdrVar != null) {
            try {
                if (!zzdtVar.zzf()) {
                    this.j.b();
                }
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Error in making CSI ping for reporting paid event callback", e);
            }
            zzfdrVar.k.set(zzdtVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final void b4(IObjectWrapper iObjectWrapper, zzbek zzbekVar) {
        try {
            this.h.h.set(zzbekVar);
            this.f.c((Activity) ObjectWrapper.f2(iObjectWrapper), this.i);
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final com.google.android.gms.ads.internal.client.zzea zzg() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B7)).booleanValue()) {
            return null;
        }
        return this.f.f;
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final void zzh(boolean z) {
        this.i = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final String zzj() {
        try {
            return this.g.zzu();
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final long zzk() {
        zzcze zzczeVar;
        zzcsw zzcswVar = this.f;
        if (zzcswVar != null && (zzczeVar = zzcswVar.j) != null) {
            return zzczeVar.f5617a.get();
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzbed
    public final void zzl(long j) {
        zzcze zzczeVar;
        zzcsw zzcswVar = this.f;
        if (zzcswVar != null && (zzczeVar = zzcswVar.j) != null) {
            zzczeVar.a(j);
        }
    }
}
