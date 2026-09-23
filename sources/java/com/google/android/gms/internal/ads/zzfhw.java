package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfhw {

    /* renamed from: a, reason: collision with root package name */
    public final String f7374a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final JSONObject f7375c;
    public final JSONObject d;

    public zzfhw(JsonReader jsonReader) {
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
        this.d = zzd;
        this.f7374a = zzd.optString("ad_html", null);
        this.b = zzd.optString("ad_base_url", null);
        this.f7375c = zzd.optJSONObject("ad_json");
    }
}
