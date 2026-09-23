package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbmi implements zzbnn {
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* bridge */ /* synthetic */ void a(Map map, Object obj) {
        JSONObject zzc;
        zzcir zzcirVar = (zzcir) obj;
        zzbjl f0 = zzcirVar.f0();
        if (f0 != null && (zzc = f0.zzc()) != null) {
            zzcirVar.o(zzc, "nativeAdViewSignalsReady");
        } else {
            zzcirVar.o(new JSONObject(), "nativeAdViewSignalsReady");
        }
    }
}
