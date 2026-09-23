package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzeyg implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7080a;

    public zzeyg(HashMap hashMap) {
        this.f7080a = hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        HashMap hashMap = this.f7080a;
        if (!hashMap.isEmpty()) {
            Bundle bundle = zzczmVar.f5627a;
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry entry : hashMap.entrySet()) {
                ArrayDeque arrayDeque = (ArrayDeque) entry.getValue();
                if (!arrayDeque.isEmpty()) {
                    zzdyk zzdykVar = (zzdyk) entry.getKey();
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", zzdykVar.a());
                        jSONObject.put("event_type", zzdykVar.b());
                        JSONArray jSONArray2 = new JSONArray();
                        Iterator it = arrayDeque.iterator();
                        while (it.hasNext()) {
                            jSONArray2.put((Long) it.next());
                        }
                        jSONObject.put("timestamps", jSONArray2);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        com.google.android.gms.ads.internal.util.zze.zzb("Failed putting the on-device storage record.", e);
                    }
                }
            }
            if (jSONArray.length() > 0) {
                bundle.putString("on_device_storage_records", jSONArray.toString());
            }
        }
    }
}
