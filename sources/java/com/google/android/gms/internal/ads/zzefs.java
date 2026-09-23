package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzefs implements zzbry {
    @Override // com.google.android.gms.internal.ads.zzbry
    public final JSONObject a(Object obj) {
        zzeft zzeftVar = (zzeft) obj;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ea)).booleanValue()) {
            zzbzc zzbzcVar = zzeftVar.f6457c;
            jSONObject2.put("ad_request_url", zzbzcVar.f);
            jSONObject2.put("ad_request_post_body", zzbzcVar.f4981c);
        }
        zzbzc zzbzcVar2 = zzeftVar.f6457c;
        jSONObject2.put("base_url", zzbzcVar2.b);
        jSONObject2.put("signals", zzeftVar.b);
        zzefz zzefzVar = zzeftVar.f6456a;
        jSONObject3.put("body", zzefzVar.f6466c);
        jSONObject3.put("headers", com.google.android.gms.ads.internal.client.zzbb.zza().zzk(zzefzVar.b));
        jSONObject3.put("response_code", zzefzVar.f6465a);
        jSONObject3.put("latency", zzefzVar.d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zzbzcVar2.h);
        return jSONObject;
    }
}
