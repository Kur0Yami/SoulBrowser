package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfbh implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7190a;
    public final int b;

    public zzfbh(String str, int i) {
        this.f7190a = str;
        this.b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        int i;
        JSONObject jSONObject = (JSONObject) obj;
        String str = this.f7190a;
        if (!TextUtils.isEmpty(str) && (i = this.b) != -1) {
            try {
                JSONObject zzh = com.google.android.gms.ads.internal.util.zzbp.zzh(jSONObject, "pii");
                zzh.put("pvid", str);
                zzh.put("pvid_s", i);
            } catch (JSONException e) {
                com.google.android.gms.ads.internal.util.zze.zzb("Failed putting gms core app set ID info.", e);
            }
        }
    }
}
