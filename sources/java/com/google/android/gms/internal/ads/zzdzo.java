package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzdzo implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzdzp f6284c;
    public final /* synthetic */ zzbpt f;

    public /* synthetic */ zzdzo(zzdzp zzdzpVar, zzbpt zzbptVar) {
        this.f6284c = zzdzpVar;
        this.f = zzbptVar;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        try {
            this.f.F3(this.f6284c.b());
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }
}
