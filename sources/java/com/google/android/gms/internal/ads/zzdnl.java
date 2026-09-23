package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzdnl extends com.google.android.gms.ads.internal.client.zzec {

    /* renamed from: c, reason: collision with root package name */
    public final Object f5939c = new Object();
    public final com.google.android.gms.ads.internal.client.zzed f;
    public final zzbto g;

    public zzdnl(com.google.android.gms.ads.internal.client.zzed zzedVar, zzbto zzbtoVar) {
        this.f = zzedVar;
        this.g = zzbtoVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zze() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzf() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzg(boolean z) {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzh() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final int zzi() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzj() {
        zzbto zzbtoVar = this.g;
        if (zzbtoVar != null) {
            return zzbtoVar.zzA();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzk() {
        zzbto zzbtoVar = this.g;
        if (zzbtoVar != null) {
            return zzbtoVar.zzB();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzl(com.google.android.gms.ads.internal.client.zzeg zzegVar) {
        synchronized (this.f5939c) {
            try {
                com.google.android.gms.ads.internal.client.zzed zzedVar = this.f;
                if (zzedVar != null) {
                    zzedVar.zzl(zzegVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzm() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzn() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final com.google.android.gms.ads.internal.client.zzeg zzo() {
        synchronized (this.f5939c) {
            try {
                com.google.android.gms.ads.internal.client.zzed zzedVar = this.f;
                if (zzedVar != null) {
                    return zzedVar.zzo();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzp() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzq() {
        throw new RemoteException();
    }
}
