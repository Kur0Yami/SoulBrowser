package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzbnb implements zzbnn {
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* bridge */ /* synthetic */ void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        if (map.containsKey("start")) {
            zzcirVar.M(true);
        }
        if (map.containsKey("stop")) {
            zzcirVar.M(false);
        }
    }
}
