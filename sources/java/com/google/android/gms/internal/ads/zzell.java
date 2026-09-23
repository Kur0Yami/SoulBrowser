package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzell implements zzeji {

    /* renamed from: a, reason: collision with root package name */
    public final zzduu f6641a;

    public zzell(zzduu zzduuVar) {
        this.f6641a = zzduuVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzbte, com.google.android.gms.internal.ads.zzdbu] */
    @Override // com.google.android.gms.internal.ads.zzeji
    public final zzejj a(JSONObject jSONObject, String str) {
        return new zzejj(this.f6641a.a(jSONObject, str), new zzbte(), str);
    }
}
