package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import java.util.Date;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbhp {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f4683a;
    public final com.google.android.gms.ads.nonagon.signalgeneration.zzo b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.nonagon.signalgeneration.zzf f4684c;
    public final zzdxj d;
    public Runnable e;
    public zzbhm f;
    public CustomTabsSession g;
    public String h;
    public long i = 0;
    public long j;
    public JSONArray k;
    public Context l;

    public zzbhp(ScheduledExecutorService scheduledExecutorService, com.google.android.gms.ads.nonagon.signalgeneration.zzo zzoVar, com.google.android.gms.ads.nonagon.signalgeneration.zzf zzfVar, zzdxj zzdxjVar) {
        this.f4683a = scheduledExecutorService;
        this.b = zzoVar;
        this.f4684c = zzfVar;
        this.d = zzdxjVar;
    }

    public final void a(String str) {
        try {
            CustomTabsSession customTabsSession = this.g;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("gsppack", true);
            jSONObject.put("fpt", new Date(this.j).toString());
            e(jSONObject);
            if (((Boolean) zzbip.f4723c.c()).booleanValue()) {
                jSONObject.put("as", this.f4684c.zzb());
            }
            customTabsSession.a(jSONObject.toString());
            zzbhn zzbhnVar = new zzbhn(this, str);
            if (((Boolean) zzbip.e.c()).booleanValue()) {
                this.b.zzb(this.g, zzbhnVar);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("query_info_type", "requester_type_6");
            QueryInfo.generate(this.l, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), zzbhnVar);
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error creating JSON: ", e);
        }
    }

    public final JSONObject b(String str, String str2) {
        long j;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put("error", str2);
        if (((Boolean) zzbip.e.c()).booleanValue()) {
            j = ((Long) zzbip.h.c()).longValue();
        } else {
            j = 0;
        }
        jSONObject.put("sdk_ttl_ms", j);
        e(jSONObject);
        if (((Boolean) zzbip.f4723c.c()).booleanValue()) {
            jSONObject.put("as", this.f4684c.zzb());
        }
        return jSONObject;
    }

    public final JSONObject c(String str, String str2) {
        long j;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put("signal", str2);
        if (((Boolean) zzbip.e.c()).booleanValue()) {
            j = ((Long) zzbip.h.c()).longValue();
        } else {
            j = 0;
        }
        jSONObject.put("sdk_ttl_ms", j);
        e(jSONObject);
        if (((Boolean) zzbip.f4723c.c()).booleanValue()) {
            jSONObject.put("as", this.f4684c.zzb());
        }
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0049, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.jb)).booleanValue() != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzbhm r0 = r7.f
            if (r0 != 0) goto Lc
            int r0 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r0 = "PACT callback is not present, please initialize the PawCustomTabsImpl."
            com.google.android.gms.ads.internal.util.client.zzo.zzf(r0)
            return
        Lc:
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.f4679a
            boolean r0 = r0.get()
            if (r0 == 0) goto L15
            return
        L15:
            java.lang.String r0 = r7.h
            if (r0 == 0) goto L8f
            androidx.browser.customtabs.CustomTabsSession r0 = r7.g
            if (r0 == 0) goto L8f
            java.util.concurrent.ScheduledExecutorService r0 = r7.f4683a
            if (r0 == 0) goto L8f
            long r1 = r7.i
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 != 0) goto L2a
            goto L39
        L2a:
            com.google.android.gms.common.util.Clock r1 = com.google.android.gms.ads.internal.zzt.zzk()
            long r1 = r1.elapsedRealtime()
            long r3 = r7.i
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 > 0) goto L39
            goto L4b
        L39:
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.jb
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L8f
        L4b:
            androidx.browser.customtabs.CustomTabsSession r1 = r7.g
            java.lang.String r2 = r7.h
            android.net.Uri r2 = android.net.Uri.parse(r2)
            r1.getClass()
            android.os.Bundle r3 = new android.os.Bundle
            r3.<init>()
            android.support.customtabs.ICustomTabsCallback r4 = r1.f426c
            android.support.customtabs.ICustomTabsService r1 = r1.b
            android.os.Bundle r5 = new android.os.Bundle     // Catch: android.os.RemoteException -> L77
            r5.<init>()     // Catch: android.os.RemoteException -> L77
            boolean r6 = r5.isEmpty()     // Catch: android.os.RemoteException -> L77
            if (r6 == 0) goto L6b
            r5 = 0
        L6b:
            if (r5 == 0) goto L74
            r3.putAll(r5)     // Catch: android.os.RemoteException -> L77
            r1.requestPostMessageChannelWithExtras(r4, r2, r3)     // Catch: android.os.RemoteException -> L77
            goto L77
        L74:
            r1.requestPostMessageChannel(r4, r2)     // Catch: android.os.RemoteException -> L77
        L77:
            java.lang.Runnable r1 = r7.e
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.kb
            com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.a(r2)
            java.lang.Long r2 = (java.lang.Long) r2
            long r2 = r2.longValue()
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS
            r0.schedule(r1, r2, r4)
            return
        L8f:
            java.lang.String r0 = "PACT max retry connection duration timed out"
            com.google.android.gms.ads.internal.util.zze.zza(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbhp.d():void");
    }

    public final void e(JSONObject jSONObject) {
        try {
            if (this.k == null) {
                this.k = new JSONArray((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.mb));
            }
            jSONObject.put("eids", this.k);
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error fetching the PACT active eids JSON: ", e);
        }
    }
}
