package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbrt implements zzbqk, zzbrs {

    /* renamed from: c, reason: collision with root package name */
    public final zzbqu f4863c;
    public final HashSet f = new HashSet();

    public zzbrt(zzbqu zzbquVar) {
        this.f4863c = zzbquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqj
    public final void S(String str, Map map) {
        try {
            o(com.google.android.gms.ads.internal.client.zzbb.zza().zzk((HashMap) map), str);
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrs
    public final void U(String str, zzbnn zzbnnVar) {
        this.f4863c.U(str, zzbnnVar);
        this.f.remove(new AbstractMap.SimpleEntry(str, zzbnnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final /* synthetic */ void b(String str, String str2) {
        a.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void f(JSONObject jSONObject, String str) {
        b(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbrs
    public final void i0(String str, zzbnn zzbnnVar) {
        this.f4863c.i0(str, zzbnnVar);
        this.f.add(new AbstractMap.SimpleEntry(str, zzbnnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbqj
    public final /* synthetic */ void o(JSONObject jSONObject, String str) {
        a.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbqk, com.google.android.gms.internal.ads.zzbqv
    public final void zza(String str) {
        this.f4863c.zza(str);
    }
}
