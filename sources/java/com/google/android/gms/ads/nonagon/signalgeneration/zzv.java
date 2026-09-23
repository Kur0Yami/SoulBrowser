package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzdwy;
import com.google.android.gms.internal.ads.zzdxj;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzv {
    public final zzdxj h;
    public ConcurrentHashMap i;
    public final ArrayDeque f = new ArrayDeque();
    public final ArrayDeque g = new ArrayDeque();

    /* renamed from: a, reason: collision with root package name */
    public final int f3297a = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K7)).intValue();
    public final long b = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.L7)).longValue();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3298c = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.P7)).booleanValue();
    public final boolean d = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O7)).booleanValue();
    public final Map e = DesugarCollections.synchronizedMap(new zzs(this));

    public zzv(zzdxj zzdxjVar) {
        this.h = zzdxjVar;
    }

    public final synchronized void a() {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        try {
            Iterator it = this.e.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (currentTimeMillis - ((zzt) entry.getValue()).zza.longValue() <= this.b) {
                    break;
                }
                this.g.add(new Pair((String) entry.getKey(), ((zzt) entry.getValue()).zzb));
                it.remove();
            }
        } catch (ConcurrentModificationException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("QueryJsonMap.removeExpiredEntries", e);
        }
    }

    public final synchronized void b(final zzdwy zzdwyVar) {
        if (!this.f3298c) {
            return;
        }
        ArrayDeque arrayDeque = this.g;
        final ArrayDeque clone = arrayDeque.clone();
        arrayDeque.clear();
        ArrayDeque arrayDeque2 = this.f;
        final ArrayDeque clone2 = arrayDeque2.clone();
        arrayDeque2.clear();
        zzcdo.f5068a.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzu
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzv zzvVar = zzv.this;
                zzdwy zzdwyVar2 = zzdwyVar;
                zzvVar.c(zzdwyVar2, clone, "to");
                zzvVar.c(zzdwyVar2, clone2, "of");
            }
        });
    }

    public final void c(zzdwy zzdwyVar, ArrayDeque arrayDeque, String str) {
        Pair pair;
        while (!arrayDeque.isEmpty()) {
            Pair pair2 = (Pair) arrayDeque.poll();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(zzdwyVar.f6219a);
            this.i = concurrentHashMap;
            concurrentHashMap.put("action", "ev");
            this.i.put("e_r", str);
            this.i.put("e_id", (String) pair2.first);
            if (this.d) {
                try {
                    JSONObject jSONObject = new JSONObject((String) pair2.second);
                    pair = new Pair(zzaa.zzb(jSONObject.getJSONObject("extras").getString("query_info_type")), jSONObject.getString("request_agent"));
                } catch (JSONException unused) {
                    pair = new Pair(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                }
                ConcurrentHashMap concurrentHashMap2 = this.i;
                String str2 = (String) pair.first;
                if (!TextUtils.isEmpty(str2)) {
                    concurrentHashMap2.put("e_type", str2);
                }
                ConcurrentHashMap concurrentHashMap3 = this.i;
                String str3 = (String) pair.second;
                if (!TextUtils.isEmpty(str3)) {
                    concurrentHashMap3.put("e_agent", str3);
                }
            }
            this.h.a(this.i, false);
        }
    }

    public final synchronized void zza(String str, String str2, zzdwy zzdwyVar) {
        this.e.put(str, new zzt(Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()), str2, new HashSet()));
        a();
        b(zzdwyVar);
    }

    @Nullable
    public final synchronized String zzb(String str, zzdwy zzdwyVar) {
        zzt zztVar = (zzt) this.e.get(str);
        zzdwyVar.f6219a.put("request_id", str);
        if (zztVar != null) {
            zzdwyVar.f6219a.put("mhit", "true");
            return zztVar.zzb;
        }
        zzdwyVar.f6219a.put("mhit", "false");
        return null;
    }

    public final synchronized void zzc(String str) {
        this.e.remove(str);
    }

    public final synchronized boolean zzd(String str, String str2) {
        zzt zztVar = (zzt) this.e.get(str);
        if (zztVar != null) {
            if (zztVar.zzc.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public final synchronized boolean zze(String str, String str2, int i) {
        zzt zztVar = (zzt) this.e.get(str);
        if (zztVar == null) {
            return false;
        }
        Set set = zztVar.zzc;
        set.add(str2);
        if (set.size() >= i) {
            return false;
        }
        return true;
    }
}
