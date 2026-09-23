package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzccv {
    public String d;
    public String e;
    public long f;
    public JSONObject g;
    public boolean h;
    public boolean j;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f5045a = new ArrayList();
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f5046c = new HashMap();
    public final ArrayList i = new ArrayList();

    public zzccv(String str, long j) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONArray optJSONArray;
        JSONObject optJSONObject3;
        this.d = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.h = false;
        this.j = false;
        this.e = str;
        this.f = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                this.g = new JSONObject(str);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Yc)).booleanValue() && a()) {
                    return;
                }
                if (this.g.optInt("status", -1) != 1) {
                    this.h = false;
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("App settings could not be fetched successfully.");
                    return;
                }
                this.h = true;
                this.d = this.g.optString("app_id");
                JSONArray optJSONArray2 = this.g.optJSONArray("ad_unit_id_settings");
                if (optJSONArray2 != null) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        JSONObject jSONObject = optJSONArray2.getJSONObject(i2);
                        String optString = jSONObject.optString("format");
                        String optString2 = jSONObject.optString("ad_unit_id");
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if ("interstitial".equalsIgnoreCase(optString)) {
                                this.b.add(optString2);
                            } else if (("rewarded".equalsIgnoreCase(optString) || "rewarded_interstitial".equals(optString)) && (optJSONObject3 = jSONObject.optJSONObject("mediation_config")) != null) {
                                this.f5046c.put(optString2, new zzbst(optJSONObject3));
                            }
                        }
                    }
                }
                JSONArray optJSONArray3 = this.g.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray3 != null) {
                    for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                        this.f5045a.add(optJSONArray3.optString(i3));
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I7)).booleanValue() && (optJSONObject2 = this.g.optJSONObject("common_settings")) != null && (optJSONArray = optJSONObject2.optJSONArray("loeid")) != null) {
                    for (int i4 = 0; i4 < optJSONArray.length(); i4++) {
                        this.i.add(optJSONArray.get(i4).toString());
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d7)).booleanValue() && (optJSONObject = this.g.optJSONObject("common_settings")) != null) {
                    this.j = optJSONObject.optBoolean("is_prefetching_enabled", false);
                }
            } catch (JSONException e) {
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Exception occurred while processing app setting json", e);
                com.google.android.gms.ads.internal.zzt.zzh().f("AppSettings.parseAppSettingsJson", e);
            }
        }
    }

    public final boolean a() {
        zzdxe zzdxeVar;
        if (b()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z4)).booleanValue() && (zzdxeVar = com.google.android.gms.ads.internal.zzt.zzh().i) != null) {
            zzdxd a2 = zzdxeVar.a();
            a2.b("action", "cld_reset");
            a2.b("cld_lut_ms", String.valueOf(this.f));
            a2.b("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()));
            a2.b("cld_ttl_sec", String.valueOf(c()));
            a2.c();
        }
        this.f5045a.clear();
        this.b.clear();
        this.f5046c.clear();
        this.d = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.e = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.g = null;
        this.h = false;
        this.i.clear();
        this.j = false;
        return true;
    }

    public final boolean b() {
        if (!TextUtils.isEmpty(this.e) && this.g != null) {
            long c2 = c();
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            if (c2 >= 0) {
                long j = this.f;
                if (j > currentTimeMillis || TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis - j) > c2) {
                    return false;
                }
            }
        }
        return true;
    }

    public final long c() {
        zzbgb zzbgbVar = zzbgk.bd;
        long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).longValue();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ad)).booleanValue() && !TextUtils.isEmpty(this.e)) {
            return this.g.optLong("cache_ttl_sec", ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).longValue());
        }
        return longValue;
    }
}
