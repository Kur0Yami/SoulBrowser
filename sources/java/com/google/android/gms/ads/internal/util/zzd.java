package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.ads.zzbig;
import com.google.android.gms.internal.ads.zzcdr;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzd {
    public static void zza(Context context) {
        Object obj = com.google.android.gms.ads.internal.util.client.zzl.b;
        if (((Boolean) zzbig.f4708a.c()).booleanValue()) {
            try {
                if (Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0 && !com.google.android.gms.ads.internal.util.client.zzl.zzi()) {
                    ListenableFuture zzb = new zzc(context).zzb();
                    int i = zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Updating ad debug logging enablement.");
                    zzcdr.a(zzb, "AdDebugLogUpdater.updateEnablement");
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to determine debug setting.", e);
            }
        }
    }
}
