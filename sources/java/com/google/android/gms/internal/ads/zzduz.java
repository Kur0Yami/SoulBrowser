package com.google.android.gms.internal.ads;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzduz {
    public JSONObject b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6172c;
    public boolean d;
    public JSONObject e;

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f6171a = new ConcurrentHashMap();
    public final AtomicBoolean f = new AtomicBoolean(false);

    public zzduz(Executor executor) {
        this.f6172c = executor;
    }

    public final synchronized void a() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        Map map;
        try {
            this.d = true;
            zzccv zzi = com.google.android.gms.ads.internal.zzt.zzh().i().zzi();
            if (zzi != null && (jSONObject = zzi.g) != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.U4)).booleanValue()) {
                    jSONObject2 = jSONObject.optJSONObject("common_settings");
                } else {
                    jSONObject2 = null;
                }
                this.b = jSONObject2;
                this.e = jSONObject.optJSONObject("ad_unit_patterns");
                JSONArray optJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString("ad_unit_id");
                            String optString2 = optJSONObject.optString("format");
                            JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                            if (optString != null && optJSONObject2 != null && optString2 != null) {
                                ConcurrentHashMap concurrentHashMap = this.f6171a;
                                if (concurrentHashMap.containsKey(optString2)) {
                                    map = (Map) concurrentHashMap.get(optString2);
                                } else {
                                    ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
                                    concurrentHashMap.put(optString2, concurrentHashMap2);
                                    map = concurrentHashMap2;
                                }
                                map.put(optString, optJSONObject2);
                            }
                        }
                    }
                }
            }
        } finally {
        }
    }
}
