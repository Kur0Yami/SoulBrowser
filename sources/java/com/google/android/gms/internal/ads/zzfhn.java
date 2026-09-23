package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzfhn implements OnAdMetadataChangedListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.ads.internal.client.zzcb f7361c;
    public final /* synthetic */ zzfho f;

    public zzfhn(zzfho zzfhoVar, com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        this.f7361c = zzcbVar;
        Objects.requireNonNull(zzfhoVar);
        this.f = zzfhoVar;
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void onAdMetadataChanged() {
        if (this.f.h != null) {
            try {
                this.f7361c.zze();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
