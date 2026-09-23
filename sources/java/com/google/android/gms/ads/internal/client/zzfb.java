package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcao;

/* loaded from: classes.dex */
public final class zzfb extends com.google.android.gms.ads.preload.zzb {
    public zzfb(Context context) {
        super(context, AdFormat.REWARDED);
    }

    @Nullable
    public final RewardedAd zza(String str) {
        zzcaf zzcafVar;
        try {
            zzcafVar = this.f3314a.zzq(str);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            zzcafVar = null;
        }
        if (zzcafVar == null) {
            return null;
        }
        return new zzcao(this.f3315c, zzcafVar);
    }
}
