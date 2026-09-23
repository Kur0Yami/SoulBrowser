package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
final class zzdmd implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f5900a;

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzdmg zzdmgVar = (zzdmg) this.f5900a.get();
        if (zzdmgVar != null) {
            zzdip zzdipVar = zzdmgVar.m;
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
