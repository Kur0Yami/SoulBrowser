package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfco implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7222a;

    public zzfco(String str) {
        this.f7222a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        try {
            String str = this.f7222a;
            if (!TextUtils.isEmpty(str)) {
                com.google.android.gms.ads.internal.util.zzbp.zzh(jSONObject, "pii").put("adsid", str);
            }
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed putting trustless token.", e);
        }
    }
}
