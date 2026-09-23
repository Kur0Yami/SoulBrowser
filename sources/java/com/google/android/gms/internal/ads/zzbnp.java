package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
public final class zzbnp implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final zzbnq f4784a;

    public zzbnp(zzbnq zzbnqVar) {
        this.f4784a = zzbnqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Fail to parse float", e);
        }
        zzbnq zzbnqVar = this.f4784a;
        synchronized (zzbnqVar) {
            zzbnqVar.f4785a = equals;
            zzbnqVar.d.set(true);
        }
        zzbnqVar.a(f, equals2);
        zzcirVar.l0(equals);
    }
}
