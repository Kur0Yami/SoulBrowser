package com.google.android.gms.internal.ads;

import android.os.Bundle;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzejl {

    /* renamed from: c, reason: collision with root package name */
    public final String f6562c;
    public zzfhu d = null;
    public zzfhr e = null;
    public com.google.android.gms.ads.internal.client.zzv f = null;
    public final Map b = DesugarCollections.synchronizedMap(new HashMap());

    /* renamed from: a, reason: collision with root package name */
    public final List f6561a = DesugarCollections.synchronizedList(new ArrayList());

    public zzejl(String str) {
        this.f6562c = str;
    }

    public static String d(zzfhr zzfhrVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t4)).booleanValue()) {
            return zzfhrVar.p0;
        }
        return zzfhrVar.w;
    }

    public final void a(zzfhr zzfhrVar) {
        String d = d(zzfhrVar);
        Map map = this.b;
        Object obj = map.get(d);
        List list = this.f6561a;
        int indexOf = list.indexOf(obj);
        if (indexOf < 0 || indexOf >= map.size()) {
            indexOf = list.indexOf(this.f);
        }
        if (indexOf >= 0 && indexOf < map.size()) {
            this.f = (com.google.android.gms.ads.internal.client.zzv) list.get(indexOf);
            while (true) {
                indexOf++;
                if (indexOf < list.size()) {
                    com.google.android.gms.ads.internal.client.zzv zzvVar = (com.google.android.gms.ads.internal.client.zzv) list.get(indexOf);
                    zzvVar.zzb = 0L;
                    zzvVar.zzc = null;
                } else {
                    return;
                }
            }
        }
    }

    public final synchronized void b(zzfhr zzfhrVar, int i) {
        Map map = this.b;
        String d = d(zzfhrVar);
        if (map.containsKey(d)) {
            return;
        }
        Bundle bundle = new Bundle();
        JSONObject jSONObject = zzfhrVar.v;
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, jSONObject.getString(next));
            } catch (JSONException unused) {
            }
        }
        com.google.android.gms.ads.internal.client.zzv zzvVar = new com.google.android.gms.ads.internal.client.zzv(zzfhrVar.E, 0L, null, bundle, zzfhrVar.F, zzfhrVar.G, zzfhrVar.H, zzfhrVar.I);
        try {
            this.f6561a.add(i, zzvVar);
        } catch (IndexOutOfBoundsException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("AdapterResponseInfoCollector.addAdapterResponseInfoEntryAtLocation", e);
        }
        this.b.put(d, zzvVar);
    }

    public final void c(zzfhr zzfhrVar, long j, com.google.android.gms.ads.internal.client.zze zzeVar, boolean z) {
        String d = d(zzfhrVar);
        Map map = this.b;
        if (map.containsKey(d)) {
            if (this.e == null) {
                this.e = zzfhrVar;
            }
            com.google.android.gms.ads.internal.client.zzv zzvVar = (com.google.android.gms.ads.internal.client.zzv) map.get(d);
            zzvVar.zzb = j;
            zzvVar.zzc = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C7)).booleanValue() && z) {
                this.f = zzvVar;
            }
        }
    }
}
