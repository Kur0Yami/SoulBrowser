package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfa {

    /* renamed from: a, reason: collision with root package name */
    public final String f3028a;
    public final Bundle b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3029c;

    public zzfa(String str, Bundle bundle, String str2) {
        this.f3028a = str;
        this.b = bundle;
        this.f3029c = str2;
    }

    public final String zza() {
        return this.f3028a;
    }

    public final String zzb() {
        String str = this.f3029c;
        if (!TextUtils.isEmpty(str)) {
            try {
                return new JSONObject(str).optString("request_id", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            } catch (JSONException unused) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public final Bundle zzc() {
        return this.b;
    }
}
