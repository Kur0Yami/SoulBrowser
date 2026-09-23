package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.JsonWriter;
import com.google.android.gms.ads.admanager.AppEventListener;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdyd implements AppEventListener, zzddq, com.google.android.gms.ads.internal.client.zza, zzdak, zzdbe, zzdbf, zzdby, zzdan, zzfmv {

    /* renamed from: c, reason: collision with root package name */
    public final List f6255c;
    public final zzdxr f;
    public long g;

    public zzdyd(zzdxr zzdxrVar, zzclg zzclgVar) {
        this.f = zzdxrVar;
        this.f6255c = Collections.singletonList(zzclgVar);
    }

    public final void B(Class cls, String str, Object... objArr) {
        String str2;
        String simpleName = cls.getSimpleName();
        List list = this.f6255c;
        String concat = "Event-".concat(simpleName);
        zzdxr zzdxrVar = this.f;
        zzdxrVar.getClass();
        if (!((Boolean) zzbim.f4719a.c()).booleanValue()) {
            return;
        }
        long currentTimeMillis = zzdxrVar.f6244a.currentTimeMillis();
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(currentTimeMillis);
            jsonWriter.name("source").value(concat);
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jsonWriter.value(it.next().toString());
            }
            jsonWriter.endArray();
            jsonWriter.name("params").beginArray();
            for (Object obj : objArr) {
                if (obj != null) {
                    str2 = obj.toString();
                } else {
                    str2 = null;
                }
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("unable to log", e);
        }
        String valueOf = String.valueOf(stringWriter.toString());
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("AD-DBG ".concat(valueOf));
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void J() {
        B(zzdak.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void N(zzfic zzficVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void S(com.google.android.gms.ads.internal.client.zze zzeVar) {
        B(zzdan.class, "onAdFailedToLoad", Integer.valueOf(zzeVar.zza), zzeVar.zzb, zzeVar.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void U(zzbzj zzbzjVar, String str, String str2) {
        B(zzdak.class, "onRewarded", zzbzjVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void a(zzfmo zzfmoVar, String str, Throwable th) {
        B(zzfmn.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void b(Context context) {
        B(zzdbf.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
        this.g = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
        B(zzddq.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void g(String str) {
        B(zzfmn.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void i(zzfmo zzfmoVar, String str) {
        B(zzfmn.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void i0() {
        B(zzdak.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        B(zzdbe.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void o() {
        B(zzdak.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        B(com.google.android.gms.ads.internal.client.zza.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void onAppEvent(String str, String str2) {
        B(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void q(Context context) {
        B(zzdbf.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void v(zzfmo zzfmoVar, String str) {
        B(zzfmn.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zza(Context context) {
        B(zzdbf.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zze() {
        B(zzdak.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zzf() {
        B(zzdak.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - this.g;
        StringBuilder sb = new StringBuilder(String.valueOf(elapsedRealtime).length() + 21);
        sb.append("Ad Request Latency : ");
        sb.append(elapsedRealtime);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        B(zzdby.class, "onAdLoaded", new Object[0]);
    }
}
