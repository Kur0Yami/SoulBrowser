package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdnq extends zzdnr {
    public final JSONObject b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5942c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final JSONObject h;

    public zzdnq(zzfhr zzfhrVar, JSONObject jSONObject) {
        super(zzfhrVar);
        this.b = com.google.android.gms.ads.internal.util.zzbp.zzi(jSONObject, "tracking_urls_and_actions", "active_view");
        this.f5942c = com.google.android.gms.ads.internal.util.zzbp.zzj(false, jSONObject, "allow_pub_owned_ad_view");
        this.d = com.google.android.gms.ads.internal.util.zzbp.zzj(false, jSONObject, "attribution", "allow_pub_rendering");
        this.e = com.google.android.gms.ads.internal.util.zzbp.zzj(false, jSONObject, "enable_omid");
        this.g = com.google.android.gms.ads.internal.util.zzbp.zzk(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, jSONObject, "watermark_overlay_png_base64");
        this.f = jSONObject.optJSONObject("overlay") != null;
        this.h = jSONObject.optJSONObject("omid_settings");
    }

    @Override // com.google.android.gms.internal.ads.zzdnr
    public final boolean a() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzdnr
    public final boolean b() {
        return this.f5942c;
    }

    @Override // com.google.android.gms.internal.ads.zzdnr
    public final boolean c() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.zzdnr
    public final boolean d() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzdnr
    public final String e() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.zzdnr
    public final zzfin f() {
        JSONObject jSONObject = this.h;
        if (jSONObject != null) {
            return new zzfin(jSONObject);
        }
        return this.f5943a.V;
    }
}
