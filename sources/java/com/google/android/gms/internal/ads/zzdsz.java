package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;

/* loaded from: classes.dex */
public final class zzdsz extends VideoController.VideoLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final zzdnm f6120a;

    public zzdsz(zzdnm zzdnmVar) {
        this.f6120a = zzdnmVar;
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        com.google.android.gms.ads.internal.client.zzed U = this.f6120a.U();
        com.google.android.gms.ads.internal.client.zzeg zzegVar = null;
        if (U != null) {
            try {
                zzegVar = U.zzo();
            } catch (RemoteException unused) {
            }
        }
        if (zzegVar != null) {
            try {
                zzegVar.zzh();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        com.google.android.gms.ads.internal.client.zzed U = this.f6120a.U();
        com.google.android.gms.ads.internal.client.zzeg zzegVar = null;
        if (U != null) {
            try {
                zzegVar = U.zzo();
            } catch (RemoteException unused) {
            }
        }
        if (zzegVar != null) {
            try {
                zzegVar.zzg();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        com.google.android.gms.ads.internal.client.zzed U = this.f6120a.U();
        com.google.android.gms.ads.internal.client.zzeg zzegVar = null;
        if (U != null) {
            try {
                zzegVar = U.zzo();
            } catch (RemoteException unused) {
            }
        }
        if (zzegVar != null) {
            try {
                zzegVar.zze();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to call onVideoEnd()", e);
            }
        }
    }
}
