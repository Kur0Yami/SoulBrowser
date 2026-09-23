package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcqb implements zzcpr {

    /* renamed from: a, reason: collision with root package name */
    public final zzeak f5366a;

    public zzcqb(zzeak zzeakVar) {
        this.f5366a = zzeakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcpr
    public final void b(JSONObject jSONObject) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ba)).booleanValue()) {
            return;
        }
        zzeak zzeakVar = this.f5366a;
        synchronized (zzeakVar) {
            zzeakVar.p = jSONObject;
        }
    }
}
