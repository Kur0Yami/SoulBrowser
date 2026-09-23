package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzdk implements MuteThisAdReason {

    /* renamed from: a, reason: collision with root package name */
    public final String f3012a;
    public final zzdj b;

    public zzdk(zzdj zzdjVar) {
        String str;
        this.b = zzdjVar;
        try {
            str = zzdjVar.zze();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            str = null;
        }
        this.f3012a = str;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.f3012a;
    }

    public final String toString() {
        return this.f3012a;
    }

    public final zzdj zza() {
        return this.b;
    }
}
