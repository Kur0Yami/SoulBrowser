package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzbmw implements zzbnn {
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        String valueOf = String.valueOf((String) map.get("string"));
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Received log message: ".concat(valueOf));
    }
}
