package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzepk {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6788a = new HashMap();
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f6789c = new HashMap();
    public final HashMap d = new HashMap();
    public final HashMap e = new HashMap();
    public final Executor f;
    public JSONObject g;

    public zzepk(Executor executor) {
        this.f = executor;
    }

    public static final Bundle l(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle.putString(next, jSONObject.optString(next, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
            }
        }
        return bundle;
    }

    public final synchronized zzgtg a() {
        if (TextUtils.isEmpty(com.google.android.gms.ads.internal.zzt.zzh().i().zzi().e)) {
            return zzgvd.k;
        }
        return zzgtg.a(this.b);
    }

    public final synchronized zzgtg b(String str, String str2) {
        Map map;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(com.google.android.gms.ads.internal.zzt.zzh().i().zzi().e) && (map = (Map) this.f6789c.get(str)) != null) {
                List<zzepm> list = (List) map.get(str2);
                if (list == null) {
                    String a2 = zzdvb.a(this.g, str2, str);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.mc)).booleanValue()) {
                        a2 = a2.toLowerCase(Locale.ROOT);
                    }
                    list = (List) map.get(a2);
                }
                if (list != null) {
                    HashMap hashMap = new HashMap();
                    for (zzepm zzepmVar : list) {
                        String str3 = zzepmVar.f6790a;
                        if (!hashMap.containsKey(str3)) {
                            hashMap.put(str3, new ArrayList());
                        }
                        ((List) hashMap.get(str3)).add(zzepmVar.b);
                    }
                    return zzgtg.a(hashMap);
                }
            }
            return zzgvd.k;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized HashMap c(String str, String str2) {
        HashMap hashMap;
        Bundle bundle;
        try {
            zzgtg b = b(str, str2);
            zzgtg k = k(str2);
            hashMap = new HashMap();
            Iterator it = b.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str3 = (String) entry.getKey();
                if (k.containsKey(str3)) {
                    zzepo zzepoVar = (zzepo) k.get(str3);
                    List list = (List) entry.getValue();
                    boolean z = zzepoVar.b;
                    boolean z2 = zzepoVar.f6793c;
                    boolean z3 = zzepoVar.d;
                    if (list != null && !list.isEmpty()) {
                        bundle = (Bundle) list.get(0);
                    } else {
                        bundle = new Bundle();
                    }
                    hashMap.put(str3, new zzepo(str3, z, z2, z3, bundle));
                }
            }
            zzgtn zzgtnVar = k.f8248c;
            if (zzgtnVar == null) {
                zzgtnVar = k.b();
                k.f8248c = zzgtnVar;
            }
            zzgvr it2 = zzgtnVar.iterator();
            while (it2.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it2.next();
                String str4 = (String) entry2.getKey();
                if (!hashMap.containsKey(str4) && ((zzepo) entry2.getValue()).d) {
                    hashMap.put(str4, (zzepo) entry2.getValue());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return hashMap;
    }

    public final synchronized void d(String str) {
        if (!TextUtils.isEmpty(str)) {
            HashMap hashMap = this.f6788a;
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, new zzepm(str, new Bundle()));
            }
        }
    }

    public final synchronized void e() {
        this.b.clear();
        this.f6788a.clear();
        this.e.clear();
        this.d.clear();
        h();
        f();
        g();
    }

    public final synchronized void f() {
        JSONObject jSONObject;
        if (!((Boolean) zzbiq.f.c()).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p2)).booleanValue() && (jSONObject = com.google.android.gms.ads.internal.zzt.zzh().i().zzi().g) != null) {
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray("signal_adapters");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        Bundle l = l(jSONObject2.optJSONObject("data"));
                        String optString = jSONObject2.optString("adapter_class_name");
                        boolean optBoolean = jSONObject2.optBoolean("render", false);
                        boolean optBoolean2 = jSONObject2.optBoolean("collect_signals", false);
                        if (!TextUtils.isEmpty(optString)) {
                            this.b.put(optString, new zzepo(optString, optBoolean2, optBoolean, true, l));
                        }
                    }
                } catch (JSONException e) {
                    com.google.android.gms.ads.internal.util.zze.zzb("Malformed config loading JSON.", e);
                }
            }
        }
    }

    public final synchronized void g() {
        JSONObject jSONObject;
        try {
            if (!((Boolean) zzbiq.b.c()).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q2)).booleanValue() && (jSONObject = com.google.android.gms.ads.internal.zzt.zzh().i().zzi().g) != null) {
                    JSONArray jSONArray = jSONObject.getJSONArray("adapter_settings");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("adapter_class_name");
                        JSONArray optJSONArray = jSONObject2.optJSONArray("permission_set");
                        if (!TextUtils.isEmpty(optString) && optJSONArray != null) {
                            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                JSONObject jSONObject3 = optJSONArray.getJSONObject(i2);
                                boolean optBoolean = jSONObject3.optBoolean("enable_rendering", false);
                                boolean optBoolean2 = jSONObject3.optBoolean("collect_secure_signals", false);
                                boolean optBoolean3 = jSONObject3.optBoolean("collect_secure_signals_on_full_app", false);
                                String optString2 = jSONObject3.optString("platform");
                                zzepo zzepoVar = new zzepo(optString, optBoolean2, optBoolean, optBoolean3, new Bundle());
                                if (optString2.equals("ADMOB")) {
                                    this.d.put(optString, zzepoVar);
                                } else if (optString2.equals("AD_MANAGER")) {
                                    this.e.put(optString, zzepoVar);
                                }
                            }
                        }
                    }
                }
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Malformed config loading JSON.", e);
        } finally {
        }
    }

    public final synchronized void h() {
        String optString;
        JSONArray optJSONArray;
        try {
            JSONObject jSONObject = com.google.android.gms.ads.internal.zzt.zzh().i().zzi().g;
            if (jSONObject != null) {
                try {
                    JSONArray optJSONArray2 = jSONObject.optJSONArray("ad_unit_id_settings");
                    this.g = jSONObject.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject2 = optJSONArray2.getJSONObject(i);
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.mc)).booleanValue()) {
                                optString = jSONObject2.optString("ad_unit_id", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).toLowerCase(Locale.ROOT);
                            } else {
                                optString = jSONObject2.optString("ad_unit_id", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            }
                            String optString2 = jSONObject2.optString("format", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject2.optJSONObject("mediation_config");
                            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("ad_networks")) != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    arrayList.addAll(i(optJSONArray.getJSONObject(i2)));
                                }
                            }
                            j(optString2, optString, arrayList);
                        }
                    }
                } catch (JSONException e) {
                    com.google.android.gms.ads.internal.util.zze.zzb("Malformed config loading JSON.", e);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized ArrayList i(JSONObject jSONObject) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            if (jSONObject != null) {
                Bundle l = l(jSONObject.optJSONObject("data"));
                JSONArray optJSONArray = jSONObject.optJSONArray("rtb_adapters");
                if (optJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        String optString = optJSONArray.optString(i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        if (!TextUtils.isEmpty(optString)) {
                            arrayList2.add(optString);
                        }
                    }
                    int size = arrayList2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String str = (String) arrayList2.get(i2);
                        d(str);
                        if (((zzepm) this.f6788a.get(str)) != null) {
                            arrayList.add(new zzepm(str, l));
                        }
                    }
                }
            }
        } finally {
        }
        return arrayList;
    }

    public final synchronized void j(String str, String str2, ArrayList arrayList) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                HashMap hashMap = this.f6789c;
                Map map = (Map) hashMap.get(str);
                if (map == null) {
                    map = new HashMap();
                }
                hashMap.put(str, map);
                List list = (List) map.get(str2);
                if (list == null) {
                    list = new ArrayList();
                }
                list.addAll(arrayList);
                map.put(str2, list);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized zzgtg k(String str) {
        HashMap hashMap;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(com.google.android.gms.ads.internal.zzt.zzh().i().zzi().e)) {
                boolean matches = Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y3), str);
                boolean matches2 = Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z3), str);
                if (matches) {
                    hashMap = new HashMap(this.e);
                } else if (matches2) {
                    hashMap = new HashMap(this.d);
                }
                return zzgtg.a(hashMap);
            }
            return zzgvd.k;
        } catch (Throwable th) {
            throw th;
        }
    }
}
