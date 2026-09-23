package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfca implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f7208a;

    public zzfca(Bundle bundle) {
        this.f7208a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        Bundle bundle = this.f7208a;
        if (bundle != null) {
            try {
                com.google.android.gms.ads.internal.util.zzbp.zzh(com.google.android.gms.ads.internal.util.zzbp.zzh(jSONObject, "device"), "play_store").put("parental_controls", com.google.android.gms.ads.internal.client.zzbb.zza().zzm(bundle));
            } catch (JSONException unused) {
                com.google.android.gms.ads.internal.util.zze.zza("Failed putting parental controls bundle.");
            }
        }
    }
}
