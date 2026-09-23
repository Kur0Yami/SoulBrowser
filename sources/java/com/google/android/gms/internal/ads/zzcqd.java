package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes.dex */
final class zzcqd implements zzcpq {
    @Override // com.google.android.gms.internal.ads.zzcpq
    public final void a(HashMap hashMap) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Mb)).booleanValue() && !hashMap.isEmpty()) {
            String str = (String) hashMap.get("is_topics_ad_personalization_allowed");
            if (!TextUtils.isEmpty(str)) {
                com.google.android.gms.ads.internal.zzt.zzh().i().zzy(Boolean.parseBoolean(str));
            }
        }
    }
}
