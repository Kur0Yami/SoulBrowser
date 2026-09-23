package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzbmz implements zzbnn {
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* bridge */ /* synthetic */ void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzcirVar.zzdk();
        } else if ("resume".equals(str)) {
            zzcirVar.zzdl();
        }
    }
}
