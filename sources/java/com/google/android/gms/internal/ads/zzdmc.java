package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
final class zzdmc implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f5899a;

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzdmg zzdmgVar = (zzdmg) this.f5899a.get();
        if (zzdmgVar != null) {
            zzdip zzdipVar = zzdmgVar.m;
            if ("_ac".equals((String) map.get("eventName"))) {
                zzdmgVar.l.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ec)).booleanValue()) {
                    zzdipVar.P();
                    if (!TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                        zzdipVar.d0();
                    }
                }
            }
        }
    }
}
