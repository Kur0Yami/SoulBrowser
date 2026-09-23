package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbmj implements zzbnn {
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* bridge */ /* synthetic */ void a(Map map, Object obj) {
        JSONObject zzd;
        zzcir zzcirVar = (zzcir) obj;
        zzbjl f0 = zzcirVar.f0();
        if (f0 != null && (zzd = f0.zzd()) != null) {
            zzcirVar.o(zzd, "nativeClickMetaReady");
        } else {
            zzcirVar.o(new JSONObject(), "nativeClickMetaReady");
        }
    }
}
