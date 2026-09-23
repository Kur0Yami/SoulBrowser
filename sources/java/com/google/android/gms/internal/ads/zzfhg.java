package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* loaded from: classes.dex */
final class zzfhg implements OnAdMetadataChangedListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.ads.internal.client.zzdq f7355c;
    public final /* synthetic */ zzfhi f;

    public zzfhg(zzfhi zzfhiVar, com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        this.f7355c = zzdqVar;
        this.f = zzfhiVar;
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void onAdMetadataChanged() {
        if (this.f.m != null) {
            try {
                this.f7355c.zze();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
