package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfax implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final AdvertisingIdClient.Info f7177a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfzf f7178c;

    public zzfax(AdvertisingIdClient.Info info, String str, zzfzf zzfzfVar) {
        this.f7177a = info;
        this.b = str;
        this.f7178c = zzfzfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final void zza(Object obj) {
        boolean z;
        try {
            JSONObject zzh = com.google.android.gms.ads.internal.util.zzbp.zzh((JSONObject) obj, "pii");
            AdvertisingIdClient.Info info = this.f7177a;
            if (info != null && !TextUtils.isEmpty(info.getId())) {
                zzh.put("rdid", info.getId());
                zzh.put("is_lat", info.isLimitAdTrackingEnabled());
                zzh.put("idtype", "adid");
                zzfzf zzfzfVar = this.f7178c;
                long j = zzfzfVar.b;
                String str = zzfzfVar.f7743a;
                if (str != null && j > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    zzh.put("paidv1_id_android_3p", str);
                    zzh.put("paidv1_creation_time_android_3p", j);
                    return;
                }
                return;
            }
            String str2 = this.b;
            if (str2 != null) {
                zzh.put("pdid", str2);
                zzh.put("pdidtype", "ssaid");
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed putting Ad ID.", e);
        }
    }
}
