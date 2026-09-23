package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzedg {
    public static final Pattern p = Pattern.compile("\\?");

    /* renamed from: a, reason: collision with root package name */
    public final zzclg f6395a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final VersionInfoParcel f6396c;
    public final zzfik d;
    public final Executor e;
    public final ScheduledExecutorService f;
    public final String g;
    public final zzfno h;
    public final zzdwy i;
    public final zzfpi j;
    public final zzddo k;
    public final Object l = new Object();
    public String m;
    public List n;
    public Bundle o;

    public zzedg(zzclg zzclgVar, Context context, VersionInfoParcel versionInfoParcel, zzfik zzfikVar, Executor executor, String str, zzfno zzfnoVar, zzdwy zzdwyVar, zzbzi zzbziVar, ScheduledExecutorService scheduledExecutorService, zzfpi zzfpiVar, zzddo zzddoVar) {
        this.f6395a = zzclgVar;
        this.b = context;
        this.f6396c = versionInfoParcel;
        this.d = zzfikVar;
        this.e = executor;
        this.g = str;
        this.h = zzfnoVar;
        zzclgVar.b();
        this.i = zzdwyVar;
        this.f = scheduledExecutorService;
        this.j = zzfpiVar;
        this.k = zzddoVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzgxf a(java.lang.String r19, final java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzedg.a(java.lang.String, java.lang.String):com.google.android.gms.internal.ads.zzgxf");
    }

    public final void b(zzdwm zzdwmVar) {
        Bundle bundle = this.i.e;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a8)).booleanValue()) {
            androidx.work.impl.workers.a.z(zzdwmVar.f6209c, bundle);
        }
    }

    public final String c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.g));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            String concat = "Failed to update the ad types for rendering. ".concat(e.toString());
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
            return str;
        }
    }
}
