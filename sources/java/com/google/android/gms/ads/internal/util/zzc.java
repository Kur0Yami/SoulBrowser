package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* loaded from: classes.dex */
final class zzc extends zzb {
    public final Context b;

    public zzc(Context context) {
        this.b = context;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        boolean z;
        try {
            z = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.b);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        com.google.android.gms.ads.internal.util.client.zzl.zzh(z);
        StringBuilder sb = new StringBuilder(String.valueOf(z).length() + 38);
        sb.append("Update ad debug logging enablement as ");
        sb.append(z);
        String sb2 = sb.toString();
        int i2 = zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb2);
    }
}
