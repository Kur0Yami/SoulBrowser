package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzeqt implements com.google.android.gms.ads.internal.client.zza, zzdir {

    /* renamed from: c, reason: collision with root package name */
    public com.google.android.gms.ads.internal.client.zzbh f6827c;

    @Override // com.google.android.gms.internal.ads.zzdir
    public final synchronized void P() {
        com.google.android.gms.ads.internal.client.zzbh zzbhVar = this.f6827c;
        if (zzbhVar != null) {
            try {
                zzbhVar.zzb();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Remote Exception at onPhysicalClick.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final synchronized void d0() {
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        com.google.android.gms.ads.internal.client.zzbh zzbhVar = this.f6827c;
        if (zzbhVar != null) {
            try {
                zzbhVar.zzb();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Remote Exception at onAdClicked.", e);
            }
        }
    }
}
