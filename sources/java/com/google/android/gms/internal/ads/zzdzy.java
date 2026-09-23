package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdzy implements zzdan, zzddq, zzdcc {

    /* renamed from: c, reason: collision with root package name */
    public final zzeak f6296c;
    public final String f;
    public final String g;
    public zzdad j;
    public com.google.android.gms.ads.internal.client.zze k;
    public JSONObject o;
    public JSONObject p;
    public boolean q;
    public boolean r;
    public boolean s;
    public String l = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String m = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String n = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public int h = 0;
    public zzdzx i = zzdzx.f6295c;

    public zzdzy(zzeak zzeakVar, zzfik zzfikVar, String str) {
        this.f6296c = zzeakVar;
        this.g = str;
        this.f = zzfikVar.g;
    }

    public static JSONObject c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        JSONObject c2;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", zzeVar.zzc);
        jSONObject.put("errorCode", zzeVar.zza);
        jSONObject.put("errorDescription", zzeVar.zzb);
        com.google.android.gms.ads.internal.client.zze zzeVar2 = zzeVar.zzd;
        if (zzeVar2 == null) {
            c2 = null;
        } else {
            c2 = c(zzeVar2);
        }
        jSONObject.put("underlyingError", c2);
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void J(zzcvk zzcvkVar) {
        zzeak zzeakVar = this.f6296c;
        if (zzeakVar.g()) {
            this.j = zzcvkVar.f;
            this.i = zzdzx.f;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ja)).booleanValue()) {
                zzeakVar.d(this.f, this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void N(zzfic zzficVar) {
        zzeak zzeakVar = this.f6296c;
        if (zzeakVar.g()) {
            zzfib zzfibVar = zzficVar.b;
            List list = zzfibVar.f7381a;
            int i = 0;
            if (!list.isEmpty()) {
                this.h = ((zzfhr) list.get(0)).b;
            }
            zzfhu zzfhuVar = zzfibVar.b;
            String str = zzfhuVar.l;
            if (!TextUtils.isEmpty(str)) {
                this.l = str;
            }
            String str2 = zzfhuVar.m;
            if (!TextUtils.isEmpty(str2)) {
                this.m = str2;
            }
            JSONObject jSONObject = zzfhuVar.p;
            if (jSONObject.length() > 0) {
                this.p = jSONObject;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Fa)).booleanValue()) {
                if (zzeakVar.w < ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ga)).longValue()) {
                    String str3 = zzfhuVar.n;
                    if (!TextUtils.isEmpty(str3)) {
                        this.n = str3;
                    }
                    JSONObject jSONObject2 = zzfhuVar.o;
                    if (jSONObject2.length() > 0) {
                        this.o = jSONObject2;
                    }
                    JSONObject jSONObject3 = this.o;
                    if (jSONObject3 != null) {
                        i = jSONObject3.toString().length();
                    }
                    if (!TextUtils.isEmpty(this.n)) {
                        i += this.n.length();
                    }
                    long j = i;
                    synchronized (zzeakVar) {
                        zzeakVar.w += j;
                    }
                    return;
                }
                this.s = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void S(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzeak zzeakVar = this.f6296c;
        if (zzeakVar.g()) {
            this.i = zzdzx.g;
            this.k = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ja)).booleanValue()) {
                zzeakVar.d(this.f, this);
            }
        }
    }

    public final JSONObject a() {
        JSONObject jSONObject;
        IBinder iBinder;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("state", this.i);
        jSONObject2.put("format", zzfhr.a(this.h));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ja)).booleanValue()) {
            jSONObject2.put("isOutOfContext", this.q);
            if (this.q) {
                jSONObject2.put("shown", this.r);
            }
        }
        zzdad zzdadVar = this.j;
        if (zzdadVar != null) {
            jSONObject = b(zzdadVar);
        } else {
            com.google.android.gms.ads.internal.client.zze zzeVar = this.k;
            JSONObject jSONObject3 = null;
            if (zzeVar != null && (iBinder = zzeVar.zze) != null) {
                zzdad zzdadVar2 = (zzdad) iBinder;
                jSONObject3 = b(zzdadVar2);
                if (zzdadVar2.i.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(c(this.k));
                    jSONObject3.put("errors", jSONArray);
                }
            }
            jSONObject = jSONObject3;
        }
        jSONObject2.put("responseInfo", jSONObject);
        return jSONObject2;
    }

    public final JSONObject b(zzdad zzdadVar) {
        JSONObject c2;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", zzdadVar.f5650c);
        jSONObject.put("responseSecsSinceEpoch", zzdadVar.j);
        jSONObject.put("responseId", zzdadVar.f);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ca)).booleanValue()) {
            String str = zzdadVar.k;
            if (!TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Bidding data: ".concat(valueOf));
                jSONObject.put("biddingData", new JSONObject(str));
            }
        }
        if (!TextUtils.isEmpty(this.l)) {
            jSONObject.put("adRequestUrl", this.l);
        }
        if (!TextUtils.isEmpty(this.m)) {
            jSONObject.put("postBody", this.m);
        }
        if (!TextUtils.isEmpty(this.n)) {
            jSONObject.put("adResponseBody", this.n);
        }
        Object obj = this.o;
        if (obj != null) {
            jSONObject.put("adResponseHeaders", obj);
        }
        Object obj2 = this.p;
        if (obj2 != null) {
            jSONObject.put("transactionExtras", obj2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Fa)).booleanValue()) {
            jSONObject.put("hasExceededMemoryLimit", this.s);
        }
        JSONArray jSONArray = new JSONArray();
        for (com.google.android.gms.ads.internal.client.zzv zzvVar : zzdadVar.i) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("adapterClassName", zzvVar.zza);
            jSONObject2.put("latencyMillis", zzvVar.zzb);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Da)).booleanValue()) {
                jSONObject2.put("credentials", com.google.android.gms.ads.internal.client.zzbb.zza().zzm(zzvVar.zzd));
            }
            com.google.android.gms.ads.internal.client.zze zzeVar = zzvVar.zzc;
            if (zzeVar == null) {
                c2 = null;
            } else {
                c2 = c(zzeVar);
            }
            jSONObject2.put("error", c2);
            jSONArray.put(jSONObject2);
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ja)).booleanValue()) {
            zzeak zzeakVar = this.f6296c;
            if (zzeakVar.g()) {
                zzeakVar.d(this.f, this);
            }
        }
    }
}
