package com.google.android.gms.ads.internal.util.client;

import androidx.annotation.Nullable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzv {

    /* renamed from: a, reason: collision with root package name */
    public final zzx f3091a;

    public zzv() {
        this.f3091a = new zzn(1, 0, 1.0d, false);
    }

    public static zzv zzb(@Nullable JSONObject jSONObject) {
        zzn zznVar;
        JSONObject optJSONObject = jSONObject.optJSONObject("ping_strategy");
        if (optJSONObject == null) {
            zznVar = new zzn(1, 0, 1.0d, false);
        } else {
            zznVar = new zzn(optJSONObject.optInt("max_attempts", 1), optJSONObject.optInt("initial_backoff_ms", 0), optJSONObject.optDouble("backoff_multiplier", 1.0d), optJSONObject.optBoolean("buffer_after_max_attempts", false));
        }
        return new zzv(zznVar);
    }

    public final zzx zza() {
        return this.f3091a;
    }

    public zzv(zzx zzxVar) {
        this.f3091a = zzxVar;
    }
}
