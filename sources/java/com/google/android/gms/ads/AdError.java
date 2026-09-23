package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AdError {

    @NonNull
    public static final String UNDEFINED_DOMAIN = "undefined";

    /* renamed from: a, reason: collision with root package name */
    public final int f2929a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2930c;
    public final AdError d;

    public AdError(int i, @NonNull String str, @NonNull String str2, @Nullable AdError adError) {
        this.f2929a = i;
        this.b = str;
        this.f2930c = str2;
        this.d = adError;
    }

    @Nullable
    public AdError getCause() {
        return this.d;
    }

    public int getCode() {
        return this.f2929a;
    }

    @NonNull
    public String getDomain() {
        return this.f2930c;
    }

    @NonNull
    public String getMessage() {
        return this.b;
    }

    @NonNull
    public String toString() {
        try {
            return zzb().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @NonNull
    public final com.google.android.gms.ads.internal.client.zze zza() {
        com.google.android.gms.ads.internal.client.zze zzeVar;
        AdError adError = this.d;
        if (adError == null) {
            zzeVar = null;
        } else {
            zzeVar = new com.google.android.gms.ads.internal.client.zze(adError.f2929a, adError.b, adError.f2930c, null, null);
        }
        return new com.google.android.gms.ads.internal.client.zze(this.f2929a, this.b, this.f2930c, zzeVar, null);
    }

    @NonNull
    public JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.f2929a);
        jSONObject.put("Message", this.b);
        jSONObject.put("Domain", this.f2930c);
        AdError adError = this.d;
        if (adError == null) {
            jSONObject.put("Cause", "null");
            return jSONObject;
        }
        jSONObject.put("Cause", adError.zzb());
        return jSONObject;
    }

    public AdError(int i, @NonNull String str, @NonNull String str2) {
        this(i, str, str2, null);
    }
}
