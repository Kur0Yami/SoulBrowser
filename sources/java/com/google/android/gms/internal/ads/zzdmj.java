package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdmj implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdml f5909a;

    public zzdmj(zzdml zzdmlVar) {
        this.f5909a = zzdmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzdnq zzdnqVar = (zzdnq) this.f5909a.f5911a.zzb();
        zzijo.a(zzdnqVar);
        JSONObject jSONObject = zzdnqVar.b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(zzdnqVar.f5943a.z);
        } catch (JSONException unused) {
            return null;
        }
    }
}
