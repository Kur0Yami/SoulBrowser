package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzeus implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f6958a;
    public final JSONObject b;

    public zzeus(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f6958a = jSONObject;
        this.b = jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        JSONObject jSONObject = this.b;
        if (jSONObject != null) {
            zzczmVar.b.putString("fwd_common_cld", jSONObject.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        JSONObject jSONObject = this.f6958a;
        if (jSONObject != null) {
            bundle.putString("fwd_cld", jSONObject.toString());
        }
        JSONObject jSONObject2 = this.b;
        if (jSONObject2 != null) {
            bundle.putString("fwd_common_cld", jSONObject2.toString());
        }
    }
}
