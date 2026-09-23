package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdnt implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcwb f5945a;
    public final zzdmk b;

    public zzdnt(zzcwb zzcwbVar, zzdmk zzdmkVar) {
        this.f5945a = zzcwbVar;
        this.b = zzdmkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzfhr a2 = this.f5945a.a();
        JSONObject jSONObject = this.b.f5910a.f5907a;
        zzijo.a(jSONObject);
        return new zzdnq(a2, jSONObject);
    }
}
