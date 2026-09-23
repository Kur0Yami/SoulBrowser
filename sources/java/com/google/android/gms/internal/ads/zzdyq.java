package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdyq {

    /* renamed from: a, reason: collision with root package name */
    public Long f6263a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public String f6264c;
    public Integer d;
    public String e;
    public Integer f;

    public /* synthetic */ zzdyq(String str) {
        this.b = str;
    }

    public final /* synthetic */ String a() {
        String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qb);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", this.f6263a);
            jSONObject.put("eventCategory", this.b);
            jSONObject.putOpt("event", this.f6264c);
            jSONObject.putOpt("errorCode", this.d);
            jSONObject.putOpt("rewardType", this.e);
            jSONObject.putOpt("rewardAmount", this.f);
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not convert parameters to JSON.");
        }
        String jSONObject2 = jSONObject.toString();
        int length = String.valueOf(str).length();
        return android.support.v4.media.a.r(new StringBuilder(String.valueOf(jSONObject2).length() + length + 14 + 2), str, "(\"h5adsEvent\",", jSONObject2, ");");
    }
}
