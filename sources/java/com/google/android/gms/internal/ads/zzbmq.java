package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
final class zzbmq implements zzbnn {
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        try {
            String str = (String) map.get("enabled");
            zzbnn zzbnnVar = zzbnm.f4781a;
            if (!zzgpj.d("true", str) && !zzgpj.d("false", str)) {
                return;
            }
            zzfzg a2 = zzfzg.a(zzcirVar.getContext());
            boolean parseBoolean = Boolean.parseBoolean(str);
            a2.getClass();
            synchronized (zzfzg.class) {
                a2.f7744a.a(Boolean.valueOf(parseBoolean), "paidv2_user_option");
            }
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled", e);
        }
    }
}
