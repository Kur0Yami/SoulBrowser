package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzeae {

    /* renamed from: a, reason: collision with root package name */
    public final String f6305a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6306c;
    public final int d;
    public final String e;
    public final int f;
    public final boolean g;

    public zzeae(String str, String str2, String str3, int i, String str4, int i2, boolean z) {
        this.f6305a = str;
        this.b = str2;
        this.f6306c = str3;
        this.d = i;
        this.e = str4;
        this.f = i2;
        this.g = z;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adapterClassName", this.f6305a);
        jSONObject.put("version", this.f6306c);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ha)).booleanValue()) {
            jSONObject.put("sdkVersion", this.b);
        }
        jSONObject.put("status", this.d);
        jSONObject.put("description", this.e);
        jSONObject.put("initializationLatencyMillis", this.f);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ia)).booleanValue()) {
            jSONObject.put("supportsInitialization", this.g);
        }
        return jSONObject;
    }
}
